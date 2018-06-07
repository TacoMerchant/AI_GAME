///tmc_ll_demo_safe_forward_while_to_end(start_item)
/*
    shows how to while loop through a chain up to the last item or until the item is the first one
    
    I Only provide one example of this since you should know if you list is circular or not
*/

var item = argument0;
var item_id = tmc_ll_item_get_id(item);
//first
show_debug_message(tmc_ll_item_get_data(item));
//loop to the end
while(tmc_ll_item_get_next_id(item)!=0 and tmc_ll_item_get_next_id(item)!=item_id)
{
    item = tmc_ll_item_get_next(item);
    show_debug_message(tmc_ll_item_get_data(item));
}

