precision highp float;
precision highp int;

uniform sampler2D colorMap;
//uniform sampler2D normalMap;
uniform bool colorMapProvided;
//uniform bool normalMapProvided;

varying vec4 vPosition;
varying vec4 vColor;
//varying vec3 vNormal;
varying vec2 vUv;


void main()	{
    vec3 position = vPosition.xyz/vPosition.w;
    vec4 surface_color = texture(colorMap, vUv).xyzw;

//    vec3 surface_color = vec3(vUv.xy, 0.0);
    surface_color = surface_color*vColor;
    gl_FragColor = surface_color;
//    gl_FragColor = vec4(0.0,1.0,0.0, 1.0);
}
