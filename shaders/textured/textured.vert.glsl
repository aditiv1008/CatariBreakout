precision highp float;
precision highp int;

attribute vec4 color;
varying vec4 vPosition;
varying vec4 vColor;
varying vec3 vNormal;
varying vec2 vUv;

void main() {
    vColor = vec4(color.xyz,1);
    vPosition = modelViewMatrix * vec4(position.xyz, 1.0);
    vNormal = normalMatrix * normal;
    vUv = uv;
    gl_Position = projectionMatrix * modelViewMatrix * vec4(position.xyz , 1.0);
}
