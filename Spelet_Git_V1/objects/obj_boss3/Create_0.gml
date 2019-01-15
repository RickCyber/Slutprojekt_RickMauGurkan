/// @description Variablar
//De jag andvänder
sleep = true
fas = 0
hp = 100
spd = 4
jump = false
dead = false
collition = false
alarm[0] = 300
alarm[1] = 400
tick = 0
hit = 0
inwater = 0
hittable = false
firecircle = false
firecircle1 = false
coluor = c_white;
knockback = 1000;
//Gammalt, Men andvänder vissa
xx = obj_boss3.phy_position_x
yy = obj_boss3.phy_position_y

global.tdeactive = 0

image_speed = 0

x_spd = 0
y_spd = 0
z_spd = 0

xy_spd_max = 4
z_spd_max = 6

z = 59
z_max = 80

shad = 1
zjump = false

targetX = obj_player.phy_position_x;
targetY = obj_player.phy_position_y;
distanceTotal = point_distance(x,y,targetX,targetY);
dir = point_direction(x,y,targetX,targetY);