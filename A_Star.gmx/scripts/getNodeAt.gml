/*
getNodeAt(x, y): int
Returns node ID at given positions
*/

if (mouse_x >= room_width || mouse_x <= 0 || mouse_y >= room_height || mouse_y <= 0) {
    return(noone);
}


var row, column;
row = argument[1] div global.NodeSize;
column = argument[0] div global.NodeSize;

with(objMap) {
    return(nodes[column, row]);
}
