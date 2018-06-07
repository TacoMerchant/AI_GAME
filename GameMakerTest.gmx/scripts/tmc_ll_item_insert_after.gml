///tmc_ll_item_insert_after(item, item_to_link_to);
/*
    links the item so it is inserted after item_to_link_to... so it becomes item_to_link_to's NEXT making sure not to break the exiting chain
    assumes item is unchained
*/

var item = argument0,
    item_to = argument1;

//set the item's prev
item[@TMC_LL.PREV_ID] = item_to[TMC_LL.UID];
item[@TMC_LL.PREV] = item_to;

//set item's next to the prev's next (keeping the chain)
item[@TMC_LL.NEXT_ID] = item_to[TMC_LL.NEXT_ID];
item[@TMC_LL.NEXT] = item_to[TMC_LL.NEXT];

//set the prev item's next to this item
item_to[@TMC_LL.NEXT_ID] = item[TMC_LL.UID];
item_to[@TMC_LL.NEXT] = item;

//finally set the next item in the chain's prev to point to item
if(item[TMC_LL.NEXT_ID])
{
    var next_item = item[TMC_LL.NEXT];
    next_item[@TMC_LL.PREV] = item;
    next_item[@TMC_LL.PREV_ID] = item[TMC_LL.UID];
}

