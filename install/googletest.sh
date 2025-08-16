#!/bin/bash

# Clone googletest repo
cd ~/.gojo/repos
git clone https://github.com/google/googletest.git

# Build googletest from source
cd googletest
mkdir -p build
cd build
cmake ..
cmake --build .
cd ~/

# Create library and include directories
mkdir -p ~/.gojo/lib/gtest
mkdir -p ~/.gojo/lib/gmock
mkdir -p ~/.gojo/include/gtest
mkdir -p ~/.gojo/include/gmock

# Copy library and include files to gojo directory
cp -r ~/.gojo/repos/googletest/build/lib/*test*.a ~/.gojo/lib/gtest
cp -r ~/.gojo/repos/googletest/build/lib/*mock*.a ~/.gojo/lib/gmock
cp -r ~/.gojo/repos/googletest/googletest/include/gtest/* ~/.gojo/include/gtest
cp -r ~/.gojo/repos/googletest/googlemock/include/gmock/* ~/.gojo/include/gmock

# Clean up build artifacts
cd ~/.gojo/repos/googltest
rm -rf build

echo ""
ehco "googletest successfully installed"