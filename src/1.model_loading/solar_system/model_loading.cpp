#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include <learnopengl/filesystem.h>
#include <learnopengl/shader_m.h>
#include <learnopengl/camera.h>
#include <learnopengl/model.h>

#include <iostream>

void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void mouse_callback(GLFWwindow* window, double xpos, double ypos);
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset);
void processInput(GLFWwindow *window);
void load_sun(Shader ourShader, Model sun);

//settings
const unsigned int SCR_WIDTH = 1400;
const unsigned int SCR_HEIGHT = 800;
const double PI = 3.141592653589793238463;

//camera
Camera camera(glm::vec3(0.0f, 00.0f, 0.0f));
float lastX = SCR_WIDTH / 2.0f;
float lastY = SCR_HEIGHT / 2.0f;
bool firstMouse = true;
bool movement = true;
GLfloat scale = 0.1f;
GLfloat speed = 30.0f;

//timing
float deltaTime = 0.0f;
float lastFrame = 0.0f;

//lighting
glm::vec3 lightPos(1.2f, 1.0f, 2.0f);

int main() {

	//glfw: initialize and configure
	glfwInit();
	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	//glfw window creation
	GLFWwindow* window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Mini Solar System", NULL, NULL);
	if (window == NULL) {
		std::cout << "Failed to create GLFW window" << std::endl;
		glfwTerminate();
		return -1;
	}
	glfwMakeContextCurrent(window);
	glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
	glfwSetCursorPosCallback(window, mouse_callback);
	glfwSetScrollCallback(window, scroll_callback);

	//tell GLFW to capture our mouse
	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

	//glad: load all OpenGL function pointers
	if (!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)) {
		std::cout << "Failed to initialize GLAD" << std::endl;
		return -1;
	}

	//configure global opengl state
	glEnable(GL_DEPTH_TEST);

	//build and compile shaders
	Shader ourShader("shader.vs", "shader.fs");
  	Shader lampShader("lamp.vs", "lamp.fs");

	//load models
	Model sun(FileSystem::getPath("resources/objects/sun/planet.obj"));
	Model earth(FileSystem::getPath("resources/objects/earth/planet.obj"));
	Model moon(FileSystem::getPath("resources/objects/moon/planet.obj"));

	//render loop
	GLfloat scale = 0.1f;
  	GLuint i = 0;
	while (!glfwWindowShouldClose(window)) {
		
		//per-frame time logic
		float currentFrame = glfwGetTime();
		deltaTime = currentFrame - lastFrame;
		lastFrame = currentFrame;
		i++;

		//input
		processInput(window);

		//render
		glClearColor(0.05f, 0.05f, 0.05f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		
		GLfloat angle, radius, x, y, xm, ym;
		
		//enable main shader
		ourShader.use();
		ourShader.setVec3("light.position", lightPos);
        ourShader.setVec3("viewPos", camera.Position);

        //light properties
        ourShader.setVec3("light.ambient", 0.2f, 0.2f, 0.2f);
        ourShader.setVec3("light.diffuse", 0.5f, 0.5f, 0.5f);
        ourShader.setVec3("light.specular", 1.0f, 1.0f, 1.0f);
        ourShader.setFloat("light.constant", 1.0f);
        ourShader.setFloat("light.linear", 0.05f);
        ourShader.setFloat("light.quadratic", 0.012f);

        //material properties
        ourShader.setFloat("material.shininess", 1.0f);

		//view/projection transformations
		glm::mat4 projection = glm::perspective(glm::radians(camera.Zoom), (float)SCR_WIDTH / (float)SCR_HEIGHT, 0.1f, 100.0f);
		glm::mat4 view = camera.GetViewMatrix();
		ourShader.setMat4("projection", projection);
		ourShader.setMat4("view", view);
		
		//enable lampShader for sun model
		lampShader.use();
		lampShader.setMat4("projection", projection);
        lampShader.setMat4("view", view);

		//sun
		glm::mat4 sun_model = glm::mat4(1.0f);
		//translate it down so it's at the center of the scene
		sun_model = glm::translate(sun_model, lightPos); 
		//it's a bit too big for our scene, so scale it down
		sun_model = glm::scale(sun_model, glm::vec3(10.0f * scale));
		lampShader.setMat4("model", sun_model);
		sun.Draw(lampShader);
		
		//enable main shader for earth and moon
		ourShader.use();

		//earth
		glm::mat4 earth_model = glm::mat4(1.0f);
		if (movement) {
			//earth moves around sun
			angle = 0.006f * i  * speed;
			radius = 90.0f * scale;
			x = radius * sin(PI * 2 * angle / 360);
			y = radius * cos(PI * 2 * angle / 360);
			angle = 0.006f * i;
		}
		earth_model = glm::translate(earth_model, glm::vec3(x, y, 0.0f)); 
		earth_model = glm::scale(earth_model, glm::vec3(3.0f * scale));	
		if (movement) {
			//earth moves around itself
			earth_model = glm::rotate(earth_model, angle, glm::vec3(0.0f, 0.0f, 1.0f));
		}
		ourShader.setMat4("model", earth_model);
		earth.Draw(ourShader);

		//moon
		glm::mat4 moon_model = glm::mat4(1.0f);	
		if (movement) {
			//moon moves around earth
			angle = 0.050f * i * speed;
			radius = radius / 8;
			xm = x + radius * sin(PI * 2 * angle / 360);
			ym = y + radius * cos(PI * 2 * angle / 360);
		}
		moon_model = glm::translate(moon_model, glm::vec3(xm, ym, 0.0f));
		moon_model = glm::scale(moon_model, glm::vec3(1.0f * scale));
		angle = 0.006f * i;
		ourShader.setMat4("model", moon_model);
		moon.Draw(ourShader);
		
		//glfw: swap buffers and poll IO events (keys pressed/released, mouse moved etc.)
		glfwSwapBuffers(window);
		glfwPollEvents();
	}

	//glfw: terminate, clearing all previously allocated GLFW resources.
	glfwTerminate();
	return 0;
}

//process all input: query GLFW whether relevant keys are pressed/released this frame and react accordingly
void processInput(GLFWwindow *window) {
	if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
		glfwSetWindowShouldClose(window, true);
	if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
		camera.ProcessKeyboard(FORWARD, deltaTime);
	if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
		camera.ProcessKeyboard(BACKWARD, deltaTime);
	if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
		camera.ProcessKeyboard(LEFT, deltaTime);
	if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
		camera.ProcessKeyboard(RIGHT, deltaTime);
	if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS)
		movement = false;
	if (glfwGetKey(window, GLFW_KEY_C) == GLFW_PRESS)
		movement = true;
}

//glfw: whenever the window size changed (by OS or user resize) this callback function executes
void framebuffer_size_callback(GLFWwindow* window, int width, int height) {
	// make sure the viewport matches the new window dimensions; note that width and 
	// height will be significantly larger than specified on retina displays.
	glViewport(0, 0, width, height);
}

//glfw: whenever the mouse moves, this callback is called
void mouse_callback(GLFWwindow* window, double xpos, double ypos) {
	if (firstMouse) {
		lastX = xpos;
		lastY = ypos;
		firstMouse = false;
	}

	float xoffset = xpos - lastX;
	float yoffset = lastY - ypos; //reversed since y-coordinates go from bottom to top

	lastX = xpos;
	lastY = ypos;

	camera.ProcessMouseMovement(xoffset, yoffset);
}

//glfw: whenever the mouse scroll wheel scrolls, this callback is called
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset) {
	camera.ProcessMouseScroll(yoffset);
}
