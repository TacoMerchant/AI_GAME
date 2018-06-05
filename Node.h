#ifndef NODE_H
#define NODE_H

/*
//A* Search
A* Search (Root_Node, Goal)
{
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

class Node {
    public:
        Node();
        int GetX() {
            return x;
        }
        int GetY() {
            return y;
        }

    private:
        int x;
        int y;
}

#endif // NODE_H
