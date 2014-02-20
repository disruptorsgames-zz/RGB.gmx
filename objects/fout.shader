float4 vec4(float3 x0, float x1)
{
    return float4(x0, x1);
}
// Varyings
static float3 _l = {0, 0, 0};
static float3 _n = {0, 0, 0};
static float3 _v = {0, 0, 0};
static float4 _vertColor = {0, 0, 0, 0};
static float2 _vertTexcoord = {0, 0};

static float4 gl_Color[1] =
{
    float4(0, 0, 0, 0)
};


uniform float _amb_boost : register(c3);
uniform float _gm_AlphaRefValue : register(c4);
uniform bool _gm_AlphaTestEnabled : register(c5);
uniform sampler2D _gm_BaseTexture : register(s0);
uniform float4 _gm_FogColour : register(c6);
uniform bool _gm_PS_FogEnabled : register(c7);

float4 gl_texture2D(sampler2D s, float2 t)
{
    return tex2D(s, t);
}

#define GL_USES_FRAG_COLOR
;
;
;
;
;
void _DoAlphaTest(in float4 _SrcColour)
{
{
if(_gm_AlphaTestEnabled)
{
{
if((_SrcColour.w <= _gm_AlphaRefValue))
{
{
discard;
;
}
;
}
;
}
;
}
;
}
}
;
void _DoFog(inout float4 _SrcColour, in float _fogval)
{
{
if(_gm_PS_FogEnabled)
{
{
(_SrcColour = lerp(_SrcColour, _gm_FogColour, clamp(_fogval, 0.0, 1.0)));
}
;
}
;
}
}
;
;
;
;
;
;
;
;
;
;
void gl_main()
{
{
float3 _N = normalize(_n);
float3 _L = normalize((_l - _v));
float3 _E = normalize((-_v));
float3 _R = reflect((-_L), _N);
float4 _Idiff = (_vertColor * max(dot(_N, _L), 0.0));
(_Idiff = clamp(_Idiff, _amb_boost, 1.0));
(gl_Color[0] = vec4((gl_texture2D(_gm_BaseTexture, _vertTexcoord).xyz * _Idiff.xyz), gl_texture2D(_gm_BaseTexture, _vertTexcoord).w));
}
}
;
struct PS_INPUT
{
    float4 v0 : TEXCOORD0;
    float3 v1 : TEXCOORD1;
    float3 v2 : TEXCOORD2;
    float3 v3 : TEXCOORD3;
    float2 v4 : TEXCOORD4;
};

struct PS_OUTPUT
{
    float4 gl_Color0 : COLOR0;
};

PS_OUTPUT main(PS_INPUT input)
{
    _vertColor = input.v0;
    _l = input.v1.xyz;
    _n = input.v2.xyz;
    _v = input.v3.xyz;
    _vertTexcoord = input.v4.xy;

    gl_main();

    PS_OUTPUT output;
    output.gl_Color0 = gl_Color[0];

    return output;
}
