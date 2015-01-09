// shader
shader_set(vfx_celshading);
shader_set_uniform_f(shader_get_uniform(vfx_celshading, "lightPos"), o_sun.x, o_sun.y, o_sun.z);
texture_set_stage(shader_get_sampler_index(vfx_celshading, "celShadingSample"), background_get_texture(b_celshading));