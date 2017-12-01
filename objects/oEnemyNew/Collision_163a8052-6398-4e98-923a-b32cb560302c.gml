/// @description enemies dont overlap

var dir = point_direction(other.x, other.y, x, y);
hSpeedPush += lengthdir_x(0.5, dir);
vSpeedPush += lengthdir_y(0.5, dir);


