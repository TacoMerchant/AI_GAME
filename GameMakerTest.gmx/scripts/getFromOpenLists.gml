var min_1, min_2, min_3, min_4;
var shortest;

// Check for empty queues
    // Return min among the queues that aren't empty
    if (!ds_priority_empty(G1)) 
        min_1 = ds_priority_find_min(G1);
    else 
        min_1 = noone; 
        
    if (!ds_priority_empty(G2)) 
        min_2 = ds_priority_find_min(G2);
    else 
        min_2 = noone;
        
    if (!ds_priority_empty(G3)) 
        min_3 = ds_priority_find_min(G3);
    else 
        min_3 = noone;
        
    if (!ds_priority_empty(G4)) 
        min_4 = ds_priority_find_min(G4);
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
    
    // Dequeue shortest path length into G (G)    
    if (min_1 != noone) {
        if (shortest.dir == min_1.dir) { 
        G = ds_priority_find_min(G1);    
        ds_priority_delete_min(G1);      
        }   
    }
    
    if (min_2 != noone) {
        if (shortest.dir == min_2.dir) {
        G = ds_priority_find_min(G2);
        ds_priority_delete_min(G2);
        }
    }
    
    if (min_3 != noone) {
        if (shortest.dir == min_3.dir) {
        G = ds_priority_find_min(G3);
        ds_priority_delete_min(G3);
        }
    }    
    
    if (min_4 != noone) {
        if (shortest.dir == min_4.dir) {
        G = ds_priority_find_min(G4);
        ds_priority_delete_min(G4);
        }
    }  
