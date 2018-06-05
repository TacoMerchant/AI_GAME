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
openList = ds_queue_create();
var G = instance_create(obj_enemy.x, obj_enemy.y, class_Node);

ds_queue_enqueue(openList, G);
while (!ds_queue_empty(openList)) {
    G = ds_queue_dequeue(openList);
    ds_queue_enqueue(closedlist, G);
    if ((G.x == obj_player.x) && (G.y == obj_player.y)); // Change
        // Return path
    else {
        generateChildren(G);
        // Sort OpenList by pathLength
    }
}


