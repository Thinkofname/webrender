void main(void)
{
    vColor = aColor / 255.0;
    vColorTexCoord = vec3(aColorTexCoord.xy / 65535.0, aMisc.y);
    vec4 pos = vec4(aPosition, 1.0);
    pos.xy = floor(pos.xy * uDevicePixelRatio + 0.5) / uDevicePixelRatio;
    gl_Position = uTransform * pos;
}