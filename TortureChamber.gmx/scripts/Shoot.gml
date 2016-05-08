if (shoot_ready)
{
    with(instance_create(x,y,obj_projectile))
    {
        sent_from = object_get_name(other.object_index);
        speed = other.shoot_speed;
        direction = 90+other.image_angle;
        image_angle = other.image_angle;

        damage = other.damage;
    }
    alarm[1] = shoot_cooldown;
    shoot_ready = false;
}

