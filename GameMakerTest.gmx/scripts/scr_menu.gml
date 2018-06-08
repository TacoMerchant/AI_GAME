// menu

switch (mpos)
{

    case 0: 
    {
        room_goto(room0);
        break;
    
    }
        

    case 1: 
    {
        room_goto(rm_highscore);
        break;
    }
    
    case 2: 
    {
        room_goto(rm_credits);
        break;
    
    }
    
    case 3: game_end(); break;
    
    default: break;

}
