RSRC                    VisualShader            ��������                                            <      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    linked_parent_graph_frame    source    texture    texture_type    script 	   constant    code    graph_offset    mode    modes/blend    modes/depth_draw    modes/cull    modes/diffuse    modes/specular    flags/depth_prepass_alpha    flags/depth_test_disabled    flags/sss_mode_skin    flags/unshaded    flags/wireframe    flags/skip_vertex_transform    flags/world_vertex_coords    flags/ensure_correct_normals    flags/shadows_disabled    flags/ambient_light_disabled    flags/shadow_to_opacity    flags/vertex_lighting    flags/particle_trails    flags/alpha_to_coverage     flags/alpha_to_coverage_and_one    flags/debug_shadow_splits    flags/fog_disabled    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections    
   Texture2D :   res://Resources/img/Naranjita/Naranjita_Normal - Copy.png �@G3�
   &   local://VisualShaderNodeTexture_oflhg T      ,   local://VisualShaderNodeColorConstant_j01x7 �      %   res://Resources/Naranja textura.tres �         VisualShaderNodeTexture                 	         VisualShaderNodeColorConstant    
      V��>V��>V��>  �?	         VisualShader            shader_type spatial;
render_mode blend_mix, depth_draw_opaque, cull_back, diffuse_lambert, specular_schlick_ggx;

uniform sampler2D tex_frg_3;



void fragment() {
// Texture2D:3
	vec4 n_out3p0 = texture(tex_frg_3, UV);


// Output:0
	NORMAL = vec3(n_out3p0.xyz);


}
 &   
     �C   C'             (   
     �B  D)            *   
     C  �C+                        	      RSRC