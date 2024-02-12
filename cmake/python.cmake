
find_package (Python3 COMPONENTS Interpreter Development)

set(System_Python3_EXECUTABLE ${Python3_EXECUTABLE})

if(NOT Python3_FOUND)
    message(FATAL "Python not found")
endif()

message("Using System_Python3_EXECUTABLE " ${System_Python3_EXECUTABLE})

macro(add_python_virtualenv_target TargetName) #additional args are treated as pip requirements
    set(${TargetName}_EXECUTABLE ${CMAKE_BINARY_DIR}/${TargetName}/bin/python3)

    add_custom_target(${TargetName}
        COMMAND ${System_Python3_EXECUTABLE} -m virtualenv ${CMAKE_BINARY_DIR}/${TargetName}
        COMMAND ${${TargetName}_EXECUTABLE} -m pip install --require-virtualenv ${ARGN}
        COMMAND echo "Python virtual env completed at ${CMAKE_BINARY_DIR}/${TargetName}"
    )
endmacro()
