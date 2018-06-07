///tmc_ll_demo_forward_while_circular(start_item)
/*
    shows how to while loop through a chain up to the last item in the case where the chain circular, meaning the end is attached to the start
    
*/

var item = argument0;
var end_id = tmc_ll_item_get_id(item);
//first
show_debug_message(tmc_ll_item_get_data(item));
//loop to the end
while(tmc_ll_item_get_next_id(item)!=end_id)
{
    item = tmc_ll_item_get_next(item);
    show_debug_message(tmc_ll_item_get_data(item));
}

