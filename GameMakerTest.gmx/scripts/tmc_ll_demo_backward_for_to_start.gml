///tmc_ll_demo_backward_for_to_start(start_item)
/*
    shows how to for loop through a chain up to the first item in the case where the chain is not circular
*/


var item = argument0;
var at = item;
for(at = item; tmc_ll_item_get_prev_id(at)!=0; at = tmc_ll_item_get_prev(at))
{
    show_debug_message(tmc_ll_item_get_data(at));
}
//and last item
show_debug_message(tmc_ll_item_get_data(at));


