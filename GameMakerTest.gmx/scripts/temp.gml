closedList = ds_queue_create();
ds_queue_enqueue(closedList, instance_create(obj_enemy.x + 400, obj_enemy.y + 500, class_Node));

//var T = instance_create(obj_enemy.x + 400, obj_enemy.y + 500, class_Node);

if ((abs(obj_enemy.x - obj_player.x) < 50) && (abs(obj_enemy.y - obj_player.y) < 50)) {
    
}
else {
    if (obj_enemy.x < obj_player.x) {
        obj_enemy.x += 3;
    }
    else 
        obj_enemy.x -=3;
    if (obj_enemy.y < obj_player.y) {
        obj_enemy.y +=3;
    }
    else 
        obj_enemy.y -=3;
}

