# Mini Solar System 

## Getting Started

### Linux Building

#### Get CMake Git and Gcc
`apt-get install g++ cmake git`

#### Get required packaged
`apt-get install libsoil-dev libglm-dev libassimp-dev libglew-dev libglfw3-dev libxinerama-dev libxcursor-dev  libxi-dev`

#### Makefile configuration
Run CMake (preferably CMake-gui). Set source directory (ex mini-solar-system) and specify the build directory as directory/build (ex mini-solar-system/build). Hit configure and specify your compiler files (Unix Makefiles are recommended), resolve any missing directories or libraries,and then hit generate. 

### Compilation and Running
Navigate to the build directory (`cd /build`) and type `make`. This should generate the executables in the respective chapter folders. Then navigate to bin/3.model_loading directory and run `./3.model_loading__1.model_loading`.

### Tutorials
Code adapted from [https://learnopengl.com](https://learnopengl.com).

### Contributors
[Maria Despoina Siampou](https://github.com/msiampou) &
[Nikos Galanis](https://github.com/AriannaK97)
