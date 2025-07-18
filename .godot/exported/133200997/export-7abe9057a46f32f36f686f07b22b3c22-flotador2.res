RSRC                    Shader            ��������                                                  resource_local_to_scene    resource_name    code    script        '   res://Resources/shaders/flotador2.tres �          Shader          �  shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, diffuse_lambert, specular_schlick_ggx;

uniform sampler2D tex_frg_3;



void fragment() {
// ColorConstant:2
	vec4 n_out2p0 = vec4(0.003922, 0.207843, 0.388235, 0.000000);


// FloatConstant:5
	float n_out5p0 = 0.800000;


// Texture2D:3
	vec4 n_out3p0 = texture(tex_frg_3, UV);


// Output:0
	ALBEDO = vec3(n_out2p0.xyz);
	ALPHA = n_out5p0;
	ROUGHNESS = n_out3p0.x;


}
       RSRC