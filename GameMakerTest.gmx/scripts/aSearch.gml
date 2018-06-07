/*
//A* Search
A* Search (Root_Node, Goal) {
    Create Queue Q
    Insert Root_Node into Q
    While (Q_Is_Not_Empty) {
        G = Remove from Q
        Mark G visited
        If (G= goal) 
            Return the path from Root_Node to G;
        Else {
            Add each child node’s estimated distance to current distance.
            Insert the children of G which have not been previously visited into the Q
            Sort Q by path length
        }
    } // end while
    Return failure
}// end of A* function.
*/
closedList = ds_queue_create();
openList = ds_priority_create();
var G = instance_create(obj_enemy.x, obj_enemy.y, class_Node);

ds_priority_add(openList, G, G.pathLength);
while (!ds_priority_empty(openList)) {
    G = ds_priority_find_min(openList);
    ds_priority_delete_min(openList);
    ds_queue_enqueue(closedlist, G);
    if ((abs(G.x - obj_player.x) < 2) && (abs(G.y - obj_player.y) < 2));
        // Retrace path and return first move
    else {
        generateChildren(G);
        // Sort OpenList by pathLength ... or use priority queue
    }
}

// To improve performance, make sure no memory leaks
ds_queue_destroy(closedList);
ds_priority_destroy(openList);
//  and increase distance between jumps for each move


