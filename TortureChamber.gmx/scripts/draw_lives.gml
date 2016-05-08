var img_x = argument0;
var img_y = argument1;
var spr = argument2;

var spr_h = sprite_get_height(spr);
var spr_w = sprite_get_width(spr);

img_x += spr_w/2;
img_y += spr_h/2;

for (i = 0; i<lives; i++)
{
    draw_sprite_ext(spr,0,img_x,img_y,1,1,0,c_white,1);
    img_x += spr_w;
}
