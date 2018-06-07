///tmc_ll_item_get_prev(item);
/*
    returns the prev item. 
    usually used in a loop... use with get_prev_id() to ensure you did not hit the start of the chain and call this with a bad reference
        or returned back to the begining of a chain in a while looping through a cirgular list.
*/

return argument0[@TMC_LL.PREV];

