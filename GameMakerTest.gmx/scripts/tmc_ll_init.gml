///tmc_ll_init()
/*
    inits the system, you MUST call this ONLY ONCE when the game starts to initialise the global. 
    if you call it multiple times it may confuse the unique id system
*/

global.tmc_ll_uid = 0; // this is used to assign a unique id to the linked list item to bypass GML's being unable to compare different types or arrays

enum TMC_LL {
    UID, //this is a unique id used to compare linked list items, mainly useful in a circular linked list
    NEXT_ID, //if the next is set, this is set to the unique id of that item 0 is no next >0 is valid id;
    PREV_ID, //if the prev is set... ditto
    NEXT, //the item that is next in the linked list
    PREV, //the item that is previous in the linked list
    DATA //the item data of this item, the data you passed to tmc_ll_item()
}

