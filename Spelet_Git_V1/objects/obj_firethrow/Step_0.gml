/* phy_speed_x = lengthdir_x(speedb,dir)
phy_speed_y = lengthdir_y(speedb,dir)
depth = -y

if (obj_boss.fas == 2){
	speedb += .5
} 
phy_position_x = approach(x, px, lengthdir_x(spd,direction));
phy_position_y = approach(y, py, lengthdir_y(spd,direction));
distanceRemaining = point_distance(x,y,px,py);
percent = (distancetotal-distanceRemaining) / distancetotal;
z = -sin(percent * pi) * peakHeight

if (distanceRemaining == 0){
	if (physics_test_overlap(x,y,0,obj_plform)){
		with(other){
			instance_destroy()
		}
	}
	instance_destroy()
} */

xprevious = x;
yprevious = y;
zprevious = z;
distanceRemainingPrevious = distanceRemaining;
x = Approach(x, targetX, abs(lengthdir_x(spd,direction)));
y = Approach(y, targetY, abs(lengthdir_y(spd,direction))); 
distanceRemaining = point_distance(x,y,targetX,targetY);
percent = (distanceTotal-distanceRemaining) / distanceTotal;
z = -peakHeight * sin(percent * pi);	
if (distanceRemaining == 0){
	with (obj_plform){
		with (instance_position(obj_firethrow.x,obj_firethrow.y, obj_plform)){ 
			global.plform_getx = x
			global.plform_gety = y
			instance_destroy();
			instance_create_depth(x,y,depth,obj_plspawn)
			instance_create_depth(x,y,depth,obj_pit)
			break
		}
	}
	with (obj_plformdiss){
		with (instance_position(obj_firethrow.x,obj_firethrow.y, obj_plformdiss)){ 
			global.plform_getx = x
			global.plform_gety = y
			instance_destroy();
			instance_create_depth(x,y,depth,obj_plspawn2)
			instance_create_depth(x,y,depth,obj_pit)
			break
		}
	}
	var partCount = 6;
	var partAngle = random(360);
	instance_create_depth(x,y,depth,oFireExplosion)
	repeat(partCount){
		with (instance_create_layer(x,y,layer,oFireParticle)){
			direction = partAngle;	
			speed = 1;
			vspeed *= 0.5;
		}
		partAngle += 360/partCount;
	}
	instance_destroy();
}

/*
x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);
percent = point_distance(xstart,ystart,x,y) / distanceTotal;
//z = -peakHeight * sin(percent * pi);	
z += zSpeed;
zSpeed *=2;
zSpeed = min(zSpeed,6);
image_alpha = 1-((percent-1)*2);
*/
	
if (image_xscale <= 1 and hitmax == false){
	image_xscale *= 1.02
	if (image_xscale >= 1){
		hitmax = true;
	}
}
else{
	image_xscale *= .98
}
image_yscale = image_xscale;
if (image_alpha <= 0) instance_destroy();

with (instance_create_layer(x,y,layer,oFireParticle)){
	z = other.z;
}
depth = -y