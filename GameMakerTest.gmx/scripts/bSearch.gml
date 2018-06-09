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
var min_1, min_2, min_3, min_4;
var shortest;
var closedList;
var openList1, openList2, openList3, openList4;
var G, G1, G2, G3, G4;

var child1, child2, child3, child4;
var found1, found2, found3, found4;
var tempClosedList = ds_queue_create(), 
var tempNode;

closedList = ds_queue_create();
openList1 = ds_priority_create();   // Up
openList2 = ds_priority_create();   // Right
openList3 = ds_priority_create();   // Down
openList4 = ds_priority_create();   // Left

G = instance_create(x, y, class_Node);

G1 = instance_create(x, y - 20, class_Node);
G1.dir = 1; // Up

G2 = instance_create(x + 20, y, class_Node);
G2.dir = 2; // Right

G3 = instance_create(x, y + 20, class_Node);
G3.dir = 3; // Down

G4 = instance_create(x - 20, y, class_Node);
G4.dir = 4; // Left

// Add root G to closed list 
ds_queue_enqueue(closedList, G);  

// Holds all nodes that branch from an initial upward movement
if (!G1.wallCollision && !G1.beyondBoundary)
ds_priority_add(openList1, G1, G1.pathLength);

// Same but for Right initial move
if (!G2.wallCollision && !G2.beyondBoundary)
ds_priority_add(openList2, G2, G2.pathLength);

// Down
if (!G3.wallCollision && !G3.beyondBoundary)
ds_priority_add(openList3, G3, G3.pathLength);

// Left
if (!G4.wallCollision && !G4.beyondBoundary)
ds_priority_add(openList4, G4, G4.pathLength);

                                            
// Needs to search all four openLists to find the node that has shortest pathLength.
// Then a single item is pulled from one of the four lists.
// Check the min from the four queues but make sure they aren't empty first.

while (!ds_priority_empty(openList1) || !ds_priority_empty(openList2)
        || !ds_priority_empty(openList3) || !ds_priority_empty(openList4)) {

    // Returns node with the shortest pathLength among the four openLists.
    // getFromOpenLists(openList1, openList2, openList3, openList4);

    // Check for empty queues
    // Return min among the queues that aren't empty
    if (!ds_priority_empty(openList1)) 
        min_1 = ds_priority_find_min(openList1);
    else 
        min_1 = noone; 
        
    if (!ds_priority_empty(openList2)) 
        min_2 = ds_priority_find_min(openList2);
    else 
        min_2 = noone;
        
    if (!ds_priority_empty(openList3)) 
        min_3 = ds_priority_find_min(openList3);
    else 
        min_3 = noone;
        
    if (!ds_priority_empty(openList4)) 
        min_4 = ds_priority_find_min(openList4);
    else 
        min_4 = noone;
    
    // Find smallest of the four, then dequeue from the corresponding list 
    // and put into G
    shortest = min_1;
    
    if (shortest == noone)
        shortest = min_2;
    else if (min_2 != noone) {
        if (min_2.pathLength < shortest.pathLength)
        shortest = min_2;
    }
    
    if (shortest == noone)
        shortest = min_3;
    else if (min_3 != noone) {
        if (min_3.pathLength < shortest.pathLength)
        shortest = min_3;
    }
        
    if (shortest == noone)
        shortest = min_4;
    else if (min_4 != noone) {
        if (min_4.pathLength < shortest.pathLength)
        shortest = min_4;
    }
    
    // Dequeue shortest path length into G    
    if (min_1 != noone) {
        if (shortest.dir == min_1.dir) { 
        G = ds_priority_find_min(openList1);    
        ds_priority_delete_min(openList1);      
        }   
    }
    
    if (min_2 != noone) {
        if (shortest.dir == min_2.dir) {
        G = ds_priority_find_min(openList2);
        ds_priority_delete_min(openList2);
        }
    }
    
    if (min_3 != noone) {
        if (shortest.dir == min_3.dir) {
        G = ds_priority_find_min(openList3);
        ds_priority_delete_min(openList3);
        }
    }    
    
    if (min_4 != noone) {
        if (shortest.dir == min_4.dir) {
        G = ds_priority_find_min(openList4);
        ds_priority_delete_min(openList4);
        }
    }  
    
    // Mark G as visited
    ds_queue_enqueue(closedList, G);
    
    if ((abs(G.x - obj_player.x) < 50) && (abs(G.y - obj_player.y) < 50)) {
        if (G.dir == 1)
            y -= 10;
        else if (G.dir == 2)
            x += 10;
        else if (G.dir == 3) 
            y += 10;
        else if (G.dir == 4)
            x -= 10;
        
        ds_queue_destroy(closedList);
        ds_priority_destroy(openList1);
        ds_priority_destroy(openList2);
        ds_priority_destroy(openList3);
        ds_priority_destroy(openList4);

        instance_destroy(class_Node);       
            
        break;
    }   
    else {
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
    } 
}

// To improve performance, make sure no memory leaks


//  and increase distance between jumps for each move. If jumps are increased
//  then need to increase window of goal from 2 to something greater.


