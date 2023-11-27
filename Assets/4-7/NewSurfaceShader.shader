Shader "Custom/NewSurfaceShader"
{
    Properties
    {
        _Red ("RED COLOR", range(0,1)) = 0.0
        _Green ("GREEN COLOR", range(0,1)) = 0.0
        _Blue ("BLUE COLOR", range(0,1)) = 0.0
        _BrightandDark ("BRIGHTNESS", range(-1,1)) = 0.0
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }

        CGPROGRAM
        #pragma surface surf Standard fullforwardshadows
        

        struct Input
        {
            float4 color : COLOR;
        };

        float _Red;
        float _Green;
        float _Blue;
        float _BrightandDark;
        

        void surf (Input IN, inout SurfaceOutputStandard o)
        {
            o.Albedo = float3(_Red, _Green, _Blue) + _BrightandDark;
            o.Alpha = 1;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
