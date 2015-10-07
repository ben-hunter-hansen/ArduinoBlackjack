cmake_minimum_required(VERSION 3.2)
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/ArduinoToolchain.cmake)
set(PROJECT_NAME Blackjack)
project(${PROJECT_NAME})

set(${CMAKE_PROJECT_NAME}_SKETCH Blackjack.ino)
generate_arduino_firmware(${CMAKE_PROJECT_NAME}
        PORT  /dev/ttyACM0
        BOARD uno)
