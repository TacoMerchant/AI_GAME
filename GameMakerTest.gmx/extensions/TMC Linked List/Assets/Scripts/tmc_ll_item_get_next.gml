///tmc_ll_item_get_next(item);
/*
    returns the next item. 
    usually used in a loop... use with get_next_id() to ensure you did not hit the end of the chain and call this with a bad reference
        or returned back to the begining of a chain in a while looping through a cirgular list.
*/

return argument0[@TMC_LL.NEXT ];

