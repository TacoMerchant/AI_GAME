///tmc_ll_item(data);
/*
    this create a linked list item structure with the data.
    the structure is basically an array of values that will hold the data and the next/previous item this item is linked to
    see the enum int tmc_ll_init() for the location of the data
    
    obviously a linked list system is not a contiguous/linear structure. Each item are effectively independant elements until 
       they are linked forming a chain; there is no real container like in a ds_list system
       
    you are best to remember the first item in the chain as the root item.
    
    data can be an intance id for example, if so you should probably store the returned structture in the instance as a memeber variable
    data can also be a string or a real (which may be a ds_ value)
    data can also be an array.. go nuts
    
    example:
    first = tmc_ll_item("One");
    second = tmc_ll_item("Two");
    third = tmc_ll_item("Three");
    forth = tmc_ll_item("Four");
    tmc_ll_item_set_next(firsrt,second);
    tmc_ll_item_set_next(second,third);
    tmc_ll_item_set_next(third,forth);
    last = forth;
    
    //circular reference?
    tmc_ll_item_set_next(last,first);
    
    //or using the easy chaining feature
    item = tmc_ll_item("One");
    first = item;
    item = tmc_ll_item_set_next(item,tmc_ll_item("Two"));
    item = tmc_ll_item_set_next(item,tmc_ll_item("Three"));
    item = tmc_ll_item_set_next(item,tmc_ll_item("Four"));
    last = item;
    //circular reference?
    tmc_ll_item_set_next(last,first);
*/
global.tmc_ll_uid++;
return tmc_ll_to_array(global.tmc_ll_uid,0,0,0,0,argument0);
