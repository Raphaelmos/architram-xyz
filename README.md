# Architram-XYZ

An open-source 3D viewer for exploring architectural models in XYZ format.

# Overview

Architram-XYZ is an open-source 3D viewer for visualizing and interacting with architectural models in the standard XYZ format.


## Features

    Loading and displaying XYZ files
    Navigation within the scene (rotation, translation, zoom)
    Displaying information on elements (name, material, dimensions etc.)
    Screenshot capturing
    Image export
    Texture and material support

## Dependencies

Architram-XYZ is developed in C++ with the following libraries:

    SDL2 for graphical rendering
    SDL_Image for texture management
    SDL_TTF for text rendering

### Building

git clone https://github.com/Miniflint/architram-xyz.git
cd architram-xyz
make


The resulting binary library will be located in the build/bin directory.
