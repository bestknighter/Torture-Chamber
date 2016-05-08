///Movement

var hor = 0;
var ver = 0;
var mult = 2;
var dir,dpd;

hor = -1* ( keyboard_check(ord("A")) or keyboard_check(vk_left) );
hor = hor+( keyboard_check(ord("D")) or keyboard_check(vk_right) );
ver = -1* ( keyboard_check(ord("S")) or keyboard_check(vk_down) );
ver = ver+( keyboard_check(ord("W")) or keyboard_check(vk_up) );

is_moving = max(abs(hor),abs(ver));

dir = darctan2(ver,hor);
spd = sqrt(hor*hor+ver*ver)*move_speed;

if(!mp_linear_path_object(path, x+lengthdir_x(spd,dir)*mult, y+lengthdir_y(spd,dir)*mult, move_speed, obj_wall))
{
    if(!mp_linear_path_object(path, x+lengthdir_x(spd,dir+45)*mult, y+lengthdir_y(spd,dir+45)*mult, move_speed, obj_wall))
    {
        if(!mp_linear_path_object(path, x+lengthdir_x(spd,dir-45)*mult, y+lengthdir_y(spd,dir-45)*mult, move_speed, obj_wall))
        {
            if(!mp_linear_path_object(path, x+lengthdir_x(spd,dir+60)*mult, y+lengthdir_y(spd,dir+60)*mult, move_speed, obj_wall))
            {
                if(!mp_linear_path_object(path, x+lengthdir_x(spd,dir-60)*mult, y+lengthdir_y(spd,dir-60)*mult, move_speed, obj_wall))
                {
                   mp_linear_path_object(path, x, y, move_speed, obj_wall)
                }
            }
        }
    }
}

path_start(path,move_speed,path_action_stop,false);

