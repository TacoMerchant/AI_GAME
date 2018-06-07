///tmc_ll_item_get_prev_id(item);
/*
    returns the prev item id. 
    usually used in a loop... use with get_prev() to ensure you did not hit the start of the chain and call an item function with a bad reference
        or returned back to the begining of a chain in a while looping through a cirgular list.
*/

return argument0[@TMC_LL.PREV_ID ];

