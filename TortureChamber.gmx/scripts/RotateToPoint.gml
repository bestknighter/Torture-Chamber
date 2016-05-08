var finalX = argument0;
var finalY = argument1;

var dx = finalX-self.x;
var dy = finalY-self.y;

self.image_angle = -90-darctan2(dy,dx);

return self.image_angle;
