# Target name
TARGET = architram-xyz

# C flags
CXX = gcc
CXXFLAGS = -Wall -Wextra 

# Include directories
INCLUDES = -Iinclude

# Libraries
LIBS = -lSDL2 -lSDL2_image -lSDL2_ttf 

# Source files
SOURCES = srcs\main.c srcs\parse_file.c srcs\utils.c srcs\image_utils.c

# Object files
OBJECTS = $(SOURCES:.c=.o) 

# Build directory
BUILDDIR = build

# Default build target
all: $(BUILDDIR)/$(TARGET)

$(BUILDDIR)/$(TARGET): $(OBJECTS)
    @mkdir -p $(BUILDDIR)
    $(CXX) $(OBJECTS) $(INCLUDES) $(LIBS) -o $(BUILDDIR)/$(TARGET)

.c.o:
    $(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

clean: 
    rm -rf $(BUILDDIR)/*

install: all
    cp $(BUILDDIR)/$(TARGET) /usr/local/bin/

.PHONY: clean
