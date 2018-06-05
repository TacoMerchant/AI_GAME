// Check walls, then create children /////////////////// Needs Work

child1 = instance_create(argument0.x, argument0.y + 3.5, class_Node);
child2 = instance_create(argument0.x + 3.5, argument0.y, class_Node);
child3 = instance_create(argument0.x, argument0.y - 3.5, class_Node);
child4 = instance_create(argument0.x - 3.5, argument0.y, class_Node);

/*
// Calculate children's estimated distance to goal
child1.estimatedDistance = point_distance(child1.x, child1.y, obj_player.x, obj_player.y);
child2.estimatedDistance = point_distance(child2.x, child2.y, obj_player.x, obj_player.y);
child3.estimatedDistance = point_distance(child3.x, child3.y, obj_player.x, obj_player.y);
child4.estimatedDistance = point_distance(child4.x, child4.y, obj_player.x, obj_player.y);

// Calculate children's current Distance
child1.currentDistance = point_distance(obj_enemy.x, obj_enemy.y, child1.x, child1.y);
child2.currentDistance = point_distance(obj_enemy.x, obj_enemy.y, child2.x, child2.y);
child3.currentDistance = point_distance(obj_enemy.x, obj_enemy.y, child3.x, child3.y);
child4.currentDistance = point_distance(obj_enemy.x, obj_enemy.y, child4.x, child4.y);

// Add each child node's estimated distance to current distance
child1.pathLength = child1.currentDistance + G.estimatedDistance;
child2.pathLength = child2.currentDistance + G.estimatedDistance;
child3.pathLength = child3.currentDistance + G.estimatedDistance;
child4.pathLength = child4.currentDistance + G.estimatedDistance;
*/

// Insert children of G which have not been previously visited into the Q
found1 = false;
found2 = false;
found3 = false;
found4 = false;
ds_queue_copy(tempClosedList, closedList);

for (i = 0; i < ds_queue_size(tempClosedList); i++) {
    tempNode = ds_queue_dequeue(tempClosedList);
    if ((tempNode.x == child1.x) && (tempNode.y == child1.y))
        found1 = true;
    if ((tempNode.x == child2.x) && (tempNode.y == child2.y))
        found2 = true;
    if ((tempNode.x == child3.x) && (tempNode.y == child3.y))
        found3 = true;
    if ((tempNode.x == child4.x) && (tempNode.y == child4.y))
        found4 = true;    
}

if (!found1)
    ds_queue_enqueue(openList, child1);
if (!found2)
    ds_queue_enqueue(openList, child2);
if (!found3)
    ds_queue_enqueue(openList, child3);
if (!found4) 
    ds_queue_enqueue(openList, child4);

