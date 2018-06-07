///tmc_ll_demo_forward_for_circular(start_item)
/*
    shows how to for loop through a chain up to the last item in the case where the chain is circular, meaning the tail and the start are linked
*/


var item = argument0;
var end_id = tmc_ll_item_get_id(item);
var at = item;
for(at = item; tmc_ll_item_get_next_id(at)!=end_id; at = tmc_ll_item_get_next(at))
{
    show_debug_message(tmc_ll_item_get_data(at));
}
//and last item
show_debug_message(tmc_ll_item_get_data(at));


