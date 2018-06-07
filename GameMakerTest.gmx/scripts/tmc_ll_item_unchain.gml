///tmc_ll_item_unchain(item);
/*
    removes the item from the chain, setting the linked items next an prev to point to each other
    while setting this items next and prev to point back to nothing
    
    no return value
*/

var item = argument0;

//if has prev, set prev.next to next
if(item[TMC_LL.PREV_ID])
{
    var prev_item = item[TMC_LL.PREV];
    prev_item[@TMC_LL.NEXT] = item[TMC_LL.NEXT];
    prev_item[@TMC_LL.NEXT_ID] = item[TMC_LL.NEXT_ID];
}
//if has next. set next.prev to prev
if(item[TMC_LL.NEXT_ID])
{
    var next_item = item[TMC_LL.NEXT];
    next_item[@TMC_LL.PREV] = item[TMC_LL.PREV];
    next_item[@TMC_LL.PREV_ID] = item[TMC_LL.PREV_ID];
}

//and clear this item's next and prev and states
item[@TMC_LL.NEXT_ID] = 0; //not set
item[@TMC_LL.PREV_ID] = 0; //not set
item[@TMC_LL.NEXT] = 0; //free the reference
item[@TMC_LL.PREV] = 0; //free the reference


