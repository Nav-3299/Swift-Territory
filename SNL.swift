/**
Snakes and ladders
*/
var flag:Int = 0
let finalSquare = 25 
var board = [Int](repeating: 0, count:finalSquare + 1)
//ladders
board[03] = +08;
board[07] = +10;
board[09] = +09;
board[10] = +02
//snakes
board[14] = -10;
board[19] = -11;
board[22] = -02;
board[24] = -08 
var square = 0
var diceroll = 0 

//to generate random numbers 1 and 6 only
repeat
{
   
    diceroll = Int.random (in:1...6)
     flag += 1 
    print("-------------------Dice number=\(diceroll)-------------------");
    
    if (diceroll == 1 || diceroll == 6) 
    {
    // after having numbers 1 or 6 we play the game
      repeat
      {
      //add dice number only if sqaures reached are < 26
     if((square + diceroll)<26){
    square += diceroll
    }
    
    //also add the ladder and snakes NOTE its 0 otherwise
    if(square < 25){
    square = square + board[square]
        }  
    
    print ("You are on square number") 
    print (square) 
    
    diceroll = Int.random (in:1...6)
    print("***Dice number==\(diceroll)");
          
      } while square < finalSquare
        
    
    }
    else
    {
      diceroll = Int.random (in:1...6)
      flag += 1  // to end game if 1 or 6 don't occur in first 5 turns
    }
    
    //to stop the execution even if flag != 5
    if(square == 25 ){
        break
    }

}while(flag != 5 )

print ("Game over!")

