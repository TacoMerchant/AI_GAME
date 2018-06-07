///tmc_ll_demo_backward_while_to_start(start_item)
/*
    shows how to loop through a chain up to the first item in the case where the chain is not circular
*/

var item = argument0;
//first
show_debug_message(tmc_ll_item_get_data(item));
//loop to the end
while(tmc_ll_item_get_prev_id(item)!=0)
{
    item = tmc_ll_item_get_prev(item);
    show_debug_message(tmc_ll_item_get_data(item));
}

