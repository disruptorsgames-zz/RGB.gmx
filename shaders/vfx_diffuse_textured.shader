attribute vec3 in_Position;                //(x,y,z)
attribute vec4 in_Colour;                  //(r,g,b,a)
attribute vec2 in_TextureCoord;            //(u,v)
attribute vec3 in_Normal;                  //(x,y,z) 

varying vec3 vertPosition;      //Vertex Position
varying vec4 vertColor;         //Vertex Color
varying vec2 vertTexcoord;      //Vertex Texture Coords
varying vec3 vertNormal;        //Vertex Normal

uniform vec3 light_position;

varying vec3 n;
varying vec3 v;
varying vec3 l;

void main()
{

    v =((gm_Matrices[MATRIX_WORLD_VIEW] * vec4(in_Position, 1.0)).xyz); 
    n =((gm_Matrices[MATRIX_WORLD_VIEW] * vec4(in_Normal, 0.0)).xyz); 
    l =((gm_Matrices[MATRIX_VIEW] * vec4(light_position, 1.0)).xyz);
      
    vertTexcoord = in_TextureCoord;
    vertColor = in_Colour;
    
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(in_Position,1.0);
}


//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec3 vertPosition; 
varying vec4 vertColor;    
varying vec2 vertTexcoord;   
varying vec3 vertNormal;   

uniform vec3 light_color;
uniform float amb_boost;

varying vec3 n;
varying vec3 v;
varying vec3 l;

void main()
{

    vec3 N = normalize(n);
    vec3 L = normalize(l - v); //Light 
    vec3 E = normalize(-v);//Eye (Camera)
    vec3 R = reflect(-L,N); //Light reflected normal

    //Diffuse Color
    vec4 Idiff = vertColor * max(dot(N,L), 0.0);
    Idiff = clamp(Idiff, amb_boost, 1.0);

    gl_FragColor = vec4(texture2D(gm_BaseTexture,vertTexcoord).rgb * Idiff.rgb, texture2D(gm_BaseTexture,vertTexcoord).a); 
}
