///tmc_ll_demo_forward_chain_test()
show_debug_message("-----------------------")
show_debug_message("tmc_ll_demo_forward_chain_test()")
var item = tmc_ll_item("One");
var first = item;
var one = item;
var item = tmc_ll_item_set_next(item,tmc_ll_item("Two"));
var two = item;
var item = tmc_ll_item_set_next(item,tmc_ll_item("Three"));
var item = tmc_ll_item_set_next(item,tmc_ll_item("Four"));
var four = item;
var item = tmc_ll_item_set_next(item,tmc_ll_item("Five"));
var five = item;
var item = tmc_ll_item_set_next(item,tmc_ll_item("Six"));
var six = item;
var item = tmc_ll_item_set_next(item,tmc_ll_item("Seven"));
var seven = item;
var item = tmc_ll_item_set_next(item,tmc_ll_item("Eight"));
var item = tmc_ll_item_set_next(item,tmc_ll_item("Nine"));
var nine = item;
var item = tmc_ll_item_set_next(item,tmc_ll_item("Ten"));
var ten = item;
var last = item;

show_debug_message("loop one to ten");
tmc_ll_demo_forward_while_to_end(first);
show_debug_message("--------------------");

show_debug_message("loop ten to one");
tmc_ll_demo_backward_while_to_start(last);
show_debug_message("--------------------");

//edge unchain test
show_debug_message("unchain ten");
var item_to_remove = last;
last = tmc_ll_item_get_prev(last);
tmc_ll_item_unchain(item_to_remove);

show_debug_message("loop one to nine");
tmc_ll_demo_forward_while_to_end(first);
show_debug_message("--------------------");

//edge unchain test
show_debug_message("unchain one");
var item_to_remove = first;
first = tmc_ll_item_get_next(first);
tmc_ll_item_unchain(item_to_remove);

show_debug_message("loop nine to two");
tmc_ll_demo_backward_while_to_start(last);
show_debug_message("--------------------");

//mid unchain test
show_debug_message("unchain five");
tmc_ll_item_unchain(five);

show_debug_message("loop two to nine, five gone");
tmc_ll_demo_forward_while_to_end(first);
show_debug_message("--------------------");

//mid unchain test 2
show_debug_message("unchain six");
tmc_ll_item_unchain(six);

show_debug_message("loop two to nine, five and six gone");
tmc_ll_demo_forward_while_to_end(first);
show_debug_message("--------------------");

show_debug_message("rechaining five and ten");
tmc_ll_item_insert_after(ten,nine);
tmc_ll_item_insert_after(five,four);
last = ten;

show_debug_message("loop two to ten, five and ten are back");
tmc_ll_demo_forward_while_to_end(first);
show_debug_message("--------------------");

show_debug_message("rechaining one and six");
tmc_ll_item_insert_before(one,two);
tmc_ll_item_insert_before(six,seven);
first = one;


show_debug_message("loop ten to one, one and six are back");
tmc_ll_demo_backward_while_to_start(last);
show_debug_message("--------------------");

show_debug_message("for loop one to ten");
tmc_ll_demo_forward_for_to_end(first);
show_debug_message("--------------------");

show_debug_message("for loop ten to one");
tmc_ll_demo_backward_for_to_start(last);
show_debug_message("--------------------");

show_debug_message("safe loop one to ten");
tmc_ll_demo_safe_forward_while_to_end(first)
show_debug_message("--------------------");

//unchain everything gradually from end to start
while(tmc_ll_item_get_next_id(first) !=0)
{
    var item_to_remove = last;
    last = tmc_ll_item_get_prev(last);
    tmc_ll_item_unchain(item_to_remove);
    show_debug_message("loop all removing last");
    tmc_ll_demo_forward_while_to_end(first);
    show_debug_message("--------------------");
}
show_debug_message("-----------------------")
