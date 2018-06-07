///tmc_ll_item_insert_before(item, item_to_link_to);
/*
    links the item so it is inserted before item_to_link_to... so it becomes item_to_link_to's PREV making sure not to break the exiting chain
    assumes item is unchained
*/

var item = argument0,
    item_to = argument1;

//set the item's next
item[@TMC_LL.NEXT_ID] = item_to[TMC_LL.UID];
item[@TMC_LL.NEXT] = item_to;

//set item's prev to the next's prev, keeping the chain 
item[@TMC_LL.PREV_ID] = item_to[TMC_LL.PREV_ID];
item[@TMC_LL.PREV] = item_to[TMC_LL.PREV];

//set the prev item's next to this item
item_to[@TMC_LL.PREV_ID] = item[TMC_LL.UID];
item_to[@TMC_LL.PREV] = item;

//finally set the prev item in the chain's next to point to item
if(item[TMC_LL.PREV_ID])
{
    var next_item = item[TMC_LL.PREV];
    next_item[@TMC_LL.NEXT] = item;
    next_item[@TMC_LL.NEXT_ID] = item[TMC_LL.UID];;
}
