uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position;

float loremIpsum () {
    float a = 1.0;
    float b = 2.0;

    return a + b;
}

void main() {
    // vec3 foo = vec3(0.0);
    // vec3 bar = vec3(1.0, 2.0, 3.0);
    // bar.z= 4.0;

    // vec3 purpleColor = vec3(0.0);
    // purpleColor.r = 0.5;
    // purpleColor.b=1.0;

    // vec2 partial = vec2(1.0, 2.0);
    // vec3 complete = vec3(partial, 3.0);

    vec3 foo = vec3(1.0, 2.0, 3.0);
    vec2 bar = foo.xy;

    gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position, 1.0);
}