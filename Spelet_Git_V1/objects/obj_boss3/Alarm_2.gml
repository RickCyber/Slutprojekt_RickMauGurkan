/// @description Firecircle delay
// You can write your code in this editor
instance_create_depth(x+10,y+10,0,obj_firecircle)
instance_create_depth(x+10,y-10,0,obj_firecircle)
instance_create_depth(x-10,y+10,0,obj_firecircle)
instance_create_depth(x-10,y-10,0,obj_firecircle)
instance_create_depth(x+10,y,0,obj_firecircle)
instance_create_depth(x-10,y,0,obj_firecircle)
instance_create_depth(x,y+10,0,obj_firecircle)
instance_create_depth(x,y-10,0,obj_firecircle)
firecircle1 = false