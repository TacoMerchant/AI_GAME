// Generate children
child1 = instance_create(G.x, G.y - 20, class_Node);  // Double check coordinates
child1.dir = G.dir;
child2 = instance_create(G.x + 20, G.y, class_Node);
child2.dir = G.dir;
child3 = instance_create(G.x, G.y + 20, class_Node);
child3.dir = G.dir;
child4 = instance_create(G.x - 20, G.y, class_Node);
child4.dir = G.dir;

// Insert children of G which have not been previously visited into the Q
found1 = false;
found2 = false;
found3 = false;
found4 = false;
ds_queue_copy(tempClosedList, closedList);

while (!ds_queue_empty(tempClosedList)) {
    tempNode = ds_queue_dequeue(tempClosedList);
    if ((tempNode.x == child1.x) && (tempNode.y == child1.y))
        found1 = true;
    if ((tempNode.x == child2.x) && (tempNode.y == child2.y))
        found2 = true;
    if ((tempNode.x == child3.x) && (tempNode.y == child3.y))
        found3 = true;
    if ((tempNode.x == child4.x) && (tempNode.y == child4.y))
        found4 = true;
    if (found1 && found2 && found3 && found4)
        break;    
}

// If not found in closed list and it does not collide with wall
if (!found1 && !child1.wallCollision && !child1.beyondBoundary)
    ds_priority_add(openList1, child1, child1.pathLength);
if (!found2 && !child2.wallCollision && !child2.beyondBoundary)
    ds_priority_add(openList2, child2, child2.pathLength);
if (!found3 && !child3.wallCollision && !child3.beyondBoundary)
    ds_priority_add(openList3, child3, child3.pathLength);
if (!found4 && !child4.wallCollision && !child4.beyondBoundary) 
    ds_priority_add(openList4, child4, child4.pathLength);

