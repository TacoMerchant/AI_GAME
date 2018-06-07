///tmc_ll_item_set_prev(item, prev_item);
/*
    set linked list item's PREV value to the prev_item specified
    for conveneance, the prev_item is returned so it's easier to chain things
    WARNING: This assumes the NEXT/PREV references of the 2 items involved are not set
             Do not use this function to insert items in an existing chain
*/

var item = argument0,
    prev_item = argument1;

//then set the next's prev item to this
prev_item[@TMC_LL.NEXT_ID] = item[@TMC_LL.UID];
prev_item[@TMC_LL.NEXT] = item;

//set this item's next to next_item
item[@TMC_LL.PREV_ID] = prev_item[@TMC_LL.UID];
item[@TMC_LL.PREV] = prev_item;

return prev_item;
