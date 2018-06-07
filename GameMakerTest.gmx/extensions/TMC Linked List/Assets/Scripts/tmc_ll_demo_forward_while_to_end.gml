///tmc_ll_demo_forward_while_to_end(start_item)
/*
    shows how to while loop through a chain up to the last item in the case where the chain is not circular
*/

var item = argument0;
//first
show_debug_message(tmc_ll_item_get_data(item));
//loop to the end
while(tmc_ll_item_get_next_id(item)!=0)
{
    item = tmc_ll_item_get_next(item);
    show_debug_message(tmc_ll_item_get_data(item));
}

