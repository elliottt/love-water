Wind Waker Water
================

This is a [love][1] port of the fragment shader described in the water
section of [Wind Waker Graphics Analysis][2]. The texture used is a cleaned up
version of the texture from the article.

Rendering is done by drawing a cornflower-blue rectangle the size of the screen,
and passing the water surface texture as an argument to the shader. The fragment
shader uses the surface texture to draw offset light and dark bands of color,
then warps the lookup using a [compound sine curve][3].

[1]: https://love2d.org
[2]: https://medium.com/@gordonnl/wind-waker-graphics-analysis-a0b575a31127
[3]: https://stackoverflow.com/questions/36174431/how-to-make-a-wave-warp-effect-in-shader
