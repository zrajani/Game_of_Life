# Game_of_Life

Understanding the Conway’s Game of Life
The Game of life is dependent on a cell and its neighbours and the game is played in terms of generation. For a cell to go to next generation which we call a live for a second or next generation it has to see for its neighbours if there is no sufficient amount of neighbours or if it has excess of neighbours surrounding it we call as the cell as dead and it won’t be present in the next generation of the game. 
In the game thus we can have a cell live which would be denoted as logical ‘1’ or we can have the cell dead denoted by logical ‘0’. The rules that decide if the cell is alive or dead are governed by the 3 rules as mentioned:
* If a cell has less than 2 neighbours i.e. just one single neighbour or no  neighbour it can die of isolation. It is like having a lack of resources to survive.
* A cell can be born or live for the next generation of the game if and only if it has exactly 3 neighbours surrounding it. 
* If a cell has more than 4 neighbours then the cell will be bound to die in its next generation due to overcrowding. 
Lets illustrate this concept using a simple example of a glider as John Conway the inventor calls it. Consider we have a matrix of 10x16 and the initial or starting pattern as shown.


## Game of Life (Eclipse Software)

![Game of Life Eclipse](https://github.com/zrajani/Game_of_Life/blob/master/ezgif.com-video-to-gif.gif)

The detailed version of working of this game can be found on Youtube Channel at https://youtu.be/_GVBSyjA3VA
