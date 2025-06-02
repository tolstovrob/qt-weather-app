#!/bin/bash

BUILD_DIR=build

TARGET=QtWeatherApp

if [ ! -d "$BUILD_DIR" ]; then
  echo "Make build folder: $BUILD_DIR"
  mkdir "$BUILD_DIR"
fi

cd "$BUILD_DIR"

echo "Generate cmake files..."
cmake .. -DCMAKE_PREFIX_PATH="$QT_PATH"
if [ $? -ne 0 ]; then
    echo "Failed to generate cmake file"
  exit 1
fi

echo "Build from source..."
cmake --build .
if [ $? -ne 0 ]; then
  echo "Failed to build from source"
  exit 1
fi

echo "Start application..."
./src/app/"$TARGET"
