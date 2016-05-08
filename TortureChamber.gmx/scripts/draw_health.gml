life = argument0;
maxlife = argument1;
left_border = argument2;
top_border = argument3;
right_border = argument4;
bottom_border = argument5;


draw_set_alpha(1);
var col = make_colour_hsv(0,0,0);
draw_roundrect_colour_ext(x+left_border-1,y+top_border-1,x+right_border+1,y+bottom_border+1,5,5,col,col,false);

col = make_colour_hsv(90*life/maxlife,255,255);
draw_roundrect_colour_ext(x+left_border,y+top_border,x+right_border-(40*(1-life/maxlife)),y+bottom_border,5,5,col,col,false);
