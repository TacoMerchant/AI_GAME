///tmc_ll_item_get_next_id(item);
/*
    returns the next item id, or 0 if end of the chain. 
    usually used in a loop... use with get_next() to ensure you did not hit the end of the chain and call an intem function with a bad reference
        or returned back to the begining of a chain in a while looping through a cirgular list.
*/

return argument0[@ TMC_LL.NEXT_ID ];

