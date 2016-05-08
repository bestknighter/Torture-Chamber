var name = argument0;
var sent_from = argument1;

var answer = true;

answer = answer and name != sent_from;
answer = answer and name != "obj_projectile";
answer = answer and name != "obj_portal";
answer = answer and name != "obj_internalportal";
answer = answer and name != "obj_spawnpoint";

return answer;
