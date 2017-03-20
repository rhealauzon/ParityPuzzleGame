var rowOrColumn = argument[0];
var number = argument[1];
var numLoops = argument[2];

var totalValue = 0;

//this is a row-based parity
if (rowOrColumn == 0)
{
	for (var i = 0; i < numLoops; i++)
	{
		//total up all of the values
		totalValue += cards[number, i].cardValue;
	}
}

//column-based parity
else if (rowOrColumn == 1)
{
	for (var i = 0; i < numLoops; i++)
	{
		//total up all of the values
		totalValue += cards[i, number].cardValue;
	}
}


//modulus to get the parity value
totalValue = totalValue mod 2;
	
return totalValue;	