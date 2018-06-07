///tmc_ll_item_set_next(item, next_item);
/*
    set linked list item's NEXT value to the next_item specified
    for conveneance, the next_item is returned so it's easier to chain things
    WARNING: This assumes the NEXT/PREV references of the 2 items involved are not set
             Do not use this function to insert items in an existing chain
*/

var item = argument0,
    next_item = argument1;

//then set the next's prev item to this
next_item[@TMC_LL.PREV_ID] = item[@TMC_LL.UID];
next_item[@TMC_LL.PREV] = item;

//set this item's next to next_item
item[@TMC_LL.NEXT_ID] = next_item[@TMC_LL.UID];
item[@TMC_LL.NEXT] = next_item;

return next_item;
