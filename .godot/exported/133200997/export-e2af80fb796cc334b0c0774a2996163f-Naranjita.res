RSRC                    VisualShader            ��������                                            >      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    linked_parent_graph_frame    source    texture    texture_type    script 	   constant    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    flags/debug_shadow_splits    flags/fog_disabled    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/2/node    nodes/fragment/2/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections    
   Texture2D 4   res://Resources/img/Naranjita/Naranjita_Diffuse.png $S�4
   Texture2D 3   res://Resources/img/Naranjita/Naranjita_Normal.png �i	�P�A   &   local://VisualShaderNodeTexture_bdtyl       &   local://VisualShaderNodeTexture_he3ts ?      ,   local://VisualShaderNodeColorConstant_5rob5 w      '   res://Resources/shaders/Naranjita.tres �         VisualShaderNodeTexture                 	         VisualShaderNodeTexture                	         VisualShaderNodeColorConstant    
      9�>9�>9�>  �?	         VisualShader 
         �  shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, diffuse_lambert, specular_schlick_ggx;

uniform sampler2D tex_frg_2;
uniform sampler2D tex_frg_3;



void fragment() {
// Texture2D:2
	vec4 n_out2p0 = texture(tex_frg_2, UV);


// ColorConstant:4
	vec4 n_out4p0 = vec4(0.273873, 0.273873, 0.273873, 1.000000);


// Texture2D:3
	vec4 n_out3p0 = texture(tex_frg_3, UV);


// Output:0
	ALBEDO = vec3(n_out2p0.xyz);
	ROUGHNESS = n_out4p0.x;
	NORMAL_MAP = vec3(n_out3p0.xyz);


}
 &   
     �C  C'             (   
     ��  �B)            *   
   �����5�C+            ,   
     �B  �C-                                    	                 	      RSRC