RSRC                    VisualShader            ��������                                            a      resource_local_to_scene    resource_name    output_port_for_preview    default_input_values    expanded_output_ports    linked_parent_graph_frame    source    texture    texture_type    script 	   constant 	   operator    input_name 	   function    op_type    parameter_name 
   qualifier    color_default    texture_filter    texture_repeat    texture_source    code    graph_offset    mode    modes/blend    flags/skip_vertex_transform    flags/unshaded    flags/light_only    flags/world_vertex_coords    nodes/vertex/0/position    nodes/vertex/connections    nodes/fragment/0/position    nodes/fragment/3/node    nodes/fragment/3/position    nodes/fragment/4/node    nodes/fragment/4/position    nodes/fragment/5/node    nodes/fragment/5/position    nodes/fragment/6/node    nodes/fragment/6/position    nodes/fragment/7/node    nodes/fragment/7/position    nodes/fragment/8/node    nodes/fragment/8/position    nodes/fragment/9/node    nodes/fragment/9/position    nodes/fragment/10/node    nodes/fragment/10/position    nodes/fragment/11/node    nodes/fragment/11/position    nodes/fragment/12/node    nodes/fragment/12/position    nodes/fragment/13/node    nodes/fragment/13/position    nodes/fragment/14/node    nodes/fragment/14/position    nodes/fragment/15/node    nodes/fragment/15/position    nodes/fragment/16/node    nodes/fragment/16/position    nodes/fragment/17/node    nodes/fragment/17/position    nodes/fragment/18/node    nodes/fragment/18/position    nodes/fragment/19/node    nodes/fragment/19/position    nodes/fragment/20/node    nodes/fragment/20/position    nodes/fragment/21/node    nodes/fragment/21/position    nodes/fragment/22/node    nodes/fragment/22/position    nodes/fragment/23/node    nodes/fragment/23/position    nodes/fragment/25/node    nodes/fragment/25/position    nodes/fragment/26/node    nodes/fragment/26/position    nodes/fragment/27/node    nodes/fragment/27/position    nodes/fragment/connections    nodes/light/0/position    nodes/light/connections    nodes/start/0/position    nodes/start/connections    nodes/process/0/position    nodes/process/connections    nodes/collide/0/position    nodes/collide/connections    nodes/start_custom/0/position    nodes/start_custom/connections     nodes/process_custom/0/position !   nodes/process_custom/connections    nodes/sky/0/position    nodes/sky/connections    nodes/fog/0/position    nodes/fog/connections    
   Texture2D 3   res://Resources/img/piscina/fondo_piscina_foam.png X5k�2p�^   &   local://VisualShaderNodeTexture_3av1s �      ,   local://VisualShaderNodeFloatConstant_i6o7y �      &   local://VisualShaderNodeFloatOp_obttj %      $   local://VisualShaderNodeInput_fuu4r �      (   local://VisualShaderNodeFloatFunc_c80a3 �      &   local://VisualShaderNodeFloatOp_a7qo2 �      &   local://VisualShaderNodeFloatOp_bs518 ^      *   local://VisualShaderNodeMultiplyAdd_5e8gt �      $   local://VisualShaderNodeInput_cba3m *      (   local://VisualShaderNodeFloatFunc_ix7mm a      &   local://VisualShaderNodeFloatOp_hloqn �      $   local://VisualShaderNodeInput_jlkd4 �      &   local://VisualShaderNodeFloatOp_wf4p0 <      .   local://VisualShaderNodeVectorDecompose_csshx p      $   local://VisualShaderNodeInput_nu8es �      &   local://VisualShaderNodeFloatOp_1ug6x       (   local://VisualShaderNodeFloatFunc_fgq3e [      &   local://VisualShaderNodeFloatOp_ltnnt �      ,   local://VisualShaderNodeVectorCompose_gob8r �      1   local://VisualShaderNodeTexture2DParameter_tnaxd       &   local://VisualShaderNodeFloatOp_5e8gt �      &   local://VisualShaderNodeFloatOp_cba3m �      '   local://VisualShaderNodeVectorOp_ix7mm A      &   local://VisualShaderNodeTexture_tnaxd �      "   res://Resources/shaders/foam.tres �         VisualShaderNodeTexture                                                   	         VisualShaderNodeFloatConstant    
      ���	         VisualShaderNodeFloatOp                                      �@         	         VisualShaderNodeInput             time 	         VisualShaderNodeFloatFunc              	         VisualShaderNodeFloatOp                                                �?         	         VisualShaderNodeFloatOp                                      �?         	         VisualShaderNodeMultiplyAdd                                       ?      )   �z�G��?	         VisualShaderNodeInput             time 	         VisualShaderNodeFloatFunc                        	         VisualShaderNodeFloatOp                                 )   �������?	         VisualShaderNodeInput                       uv 	         VisualShaderNodeFloatOp              	          VisualShaderNodeVectorDecompose                    
                     	         VisualShaderNodeInput             time 	         VisualShaderNodeFloatOp                                 )   �������?	         VisualShaderNodeFloatFunc                        	         VisualShaderNodeFloatOp              	         VisualShaderNodeVectorCompose                        	      #   VisualShaderNodeTexture2DParameter             Texture2DParameter                   	         VisualShaderNodeFloatOp                                       ?         	         VisualShaderNodeFloatOp                                      �>         	         VisualShaderNodeVectorOp                              
                 
      ?   ?                   	         VisualShaderNodeTexture                 	         VisualShader 6         �  shader_type canvas_item;
render_mode blend_mix;

uniform sampler2D tex_frg_27;
uniform sampler2D Texture2DParameter : source_color, repeat_enable;



void fragment() {
// Texture2D:27
	vec4 n_out27p0 = texture(tex_frg_27, UV);


// Input:17
	float n_out17p0 = TIME;


// FloatOp:25
	float n_in25p1 = 0.25000;
	float n_out25p0 = n_out17p0 * n_in25p1;


// FloatOp:18
	float n_in18p1 = 0.05000;
	float n_out18p0 = n_out25p0 + n_in18p1;


// FloatFunc:19
	float n_out19p0 = sin(n_out18p0);


// Input:14
	vec2 n_out14p0 = UV;


// VectorDecompose:16
	float n_out16p0 = n_out14p0.x;
	float n_out16p1 = n_out14p0.y;


// FloatOp:20
	float n_out20p0 = n_out19p0 + n_out16p0;


// VectorCompose:21
	vec2 n_out21p0 = vec2(n_out20p0, n_out16p1);


// VectorOp:26
	vec2 n_in26p1 = vec2(0.50000, 0.50000);
	vec2 n_out26p0 = n_out21p0 * n_in26p1;


	vec4 n_out3p0;
// Texture2D:3
	n_out3p0 = texture(Texture2DParameter, n_out26p0);
	float n_out3p4 = n_out3p0.a;


// Input:6
	float n_out6p0 = TIME;


// FloatOp:9
	float n_in9p1 = 1.50000;
	float n_out9p0 = n_out6p0 * n_in9p1;


// FloatFunc:7
	float n_out7p0 = sin(n_out9p0);


// MultiplyAdd:10
	float n_in10p1 = 0.50000;
	float n_in10p2 = 0.59000;
	float n_out10p0 = fma(n_out7p0, n_in10p1, n_in10p2);


// FloatOp:5
	float n_out5p0 = n_out3p4 * n_out10p0;


// FloatOp:8
	float n_in8p1 = 1.00000;
	float n_out8p0 = n_out5p0 * n_in8p1;


// Output:0
	COLOR.rgb = vec3(n_out27p0.xyz);
	COLOR.a = n_out8p0;


}
                       
     kD  C              !   
    ���  �B"            #   
     �A  �C$            %   
     4�  \C&            '   
    ���  \D(            )   
     �  �C*            +   
     �B  4C,            -   
     9�  D.            /   
     ��  �C0            1   
     ��  �C2         	   3   
    �Y�  �C4         
   5   
     k�  �C6            7   
    �Y�  �A8            9   
     *�  �C:            ;   
     >�   B<            =   
     R�  ��>            ?   
    @!�  ��@            A   
     �  ��B            C   
     ��  ��D            E   
     ��  ��F            G   
    ���  pCH            I   
    @?�  �CJ            K   
    @5�  ��L            M   
    ���   �N            O   
   �7��SVC�P       `                                                   	       	                     
       
                                                                                                                                                                                                                                                      	      RSRC