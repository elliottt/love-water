
uniform Image water;
uniform vec4 darkColor;
uniform float time;

vec4 effect(vec4 color, Image texture, vec2 tc, vec2 sc) {
    tc = sc.xy / love_ScreenSize.xy;

    float x = ( sin( time + 25 * tc.x + 30 * tc.y)
              + sin(-time + 20 * tc.x + 35 * tc.y + 1)
              ) / 2;
    float y = ( sin( time + 25 * tc.x + 30 * tc.y)
              + sin(-time + 16 * tc.x + 3 * tc.y + 1.5)
              ) / 2;

    vec2 off = vec2(x,y) * 0.08 + 1;
    vec2 wc  = 3 * (tc + 0.15 * off);

    vec4 light = Texel(water, wc);
    vec4 dark  = Texel(water, wc + 0.3);

    return mix(mix(color, color * 0.9, dark), color * 2.2, light);
}
