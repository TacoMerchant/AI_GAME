// Generate children
child1 = instance_create(argument0.x, argument0.y + 3.5, class_Node);
child2 = instance_create(argument0.x + 3.5, argument0.y, class_Node);
child3 = instance_create(argument0.x, argument0.y - 3.5, class_Node);
child4 = instance_create(argument0.x - 3.5, argument0.y, class_Node);

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

// If not found in closed list and it does not collide with wall
if (!found1 && !child1.wallCollision && !child1.beyondBoundary)
    ds_priority_add(openList, child1, child1.pathLength);
if (!found2 && !child2.wallCollision && !child2.beyondBoundary)
    ds_priority_add(openList, child2, child2.pathLength);
if (!found3 && !child3.wallCollision && !child3.beyondBoundary)
    ds_priority_add(openList, child3, child3.pathLength);
if (!found4 && !child4.wallCollision && !child4.beyondBoundary) 
    ds_priority_add(openList, child4, child4.pathLength);

