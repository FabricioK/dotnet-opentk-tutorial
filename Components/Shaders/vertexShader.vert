#version 450 core

layout (location = 0) in vec4 position;
layout (location = 1) in vec4 color;

out vec4 frag_color;

layout (location = 20) uniform mat4 modelView;

void main(void)
{
    gl_Position = modelView * position;
    frag_color = color;
}