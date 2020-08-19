# Game_of_Life

__Understanding the Conway’s Game of Life__
The Game of life is dependent on a cell and its neighbours and the game is played in terms of generation. For a cell to go to next generation which we call a live for a second or next generation it has to see for its neighbours if there is no sufficient amount of neighbours or if it has excess of neighbours surrounding it we call as the cell as dead and it won’t be present in the next generation of the game. 
In the game thus we can have a cell live which would be denoted as logical ‘1’ or we can have the cell dead denoted by logical ‘0’. The rules that decide if the cell is alive or dead are governed by the 3 rules as mentioned:
* **If a cell has less than 2 neighbours i.e. just one single neighbour or no  neighbour it can die of isolation. It is like having a lack of resources to survive.**
* **A cell can be born or live for the next generation of the game if and only if it has exactly 3 neighbours surrounding it.**
* **If a cell has more than 4 neighbours then the cell will be bound to die in its next generation due to overcrowding.**

Lets illustrate this concept using a simple example of a glider as John Conway the inventor calls it. Consider we have a matrix of 10x16 and the initial or starting pattern as shown. _(Note the images are the screenshot from my Report you can find a complete downloadable file in the repository in documentation folder)_

***The First Generation***
![The First Generation](https://github.com/zrajani/Game_of_Life/blob/master/Images%20(ReadMe)/First%20Generation.png)
![The Second Generation](https://github.com/zrajani/Game_of_Life/blob/master/Images%20(ReadMe)/Second%20Generation.png)
![The Third Generation](https://github.com/zrajani/Game_of_Life/blob/master/Images%20(ReadMe)/Third%20Generation.png)
![The Fourth Generation](https://github.com/zrajani/Game_of_Life/blob/master/Images%20(ReadMe)/Fourth%20Generation.png)
![The Fifth Generation](https://github.com/zrajani/Game_of_Life/blob/master/Images%20(ReadMe)/Fifth%20Generation.png)

As you can see in the example in the fifth generation we get back to initial started pattern and also the pattern the glider pattern on the right side is just shifted and it will be seen like crawling after each of the 5 generations of the game and the simple 3 horizontal pattern keeps on oscillating in alternative pattern thus called as the oscillatory pattern.

Issues faced in Coding the Game of Life (GOL): 

[#6](https://github.com/zrajani/Game_of_Life/issues/6#issuecomment-645703679) 
- [x] Made the game work as per rules 
```c
/*
 * this function updates all the cells for a thread (corresponding to one community)
 */
void* updateCommFunc (void *param)
{
  while (1)
    {
      if (reproduction_flag)
	{
	  threadID_t *var = param;
	  size_t i_0 = var->row;
	  size_t j_0 = var->col;
	  size_t a = i_0 * config_NC;
	  size_t b = j_0 * config_MC;
	  for (size_t i = 0; i != config_NC; ++i)
	    {
	      for (size_t j = 0; j != config_MC; ++j)
		{
		  updateCell (i + a, j + b);
		}
	    }
	}
    }
}
```

[#5](https://github.com/zrajani/Game_of_Life/issues/4) 
- [x] Wrap around Condition 
```c
size_t countLiveNeighbours (size_t row, size_t col)
{
  size_t cell_count = 0;

  for (size_t i = row - 1; i <= row + 1; i++)
    {
      for (size_t j = col - 1; j <= col + 1; j++)
	{
// To make sure that you don't count the cell whose neighbours are counted
	  if (i != 0 && j != 0)
	    {
	      cell_count = cell_count + (size_t) env[(i + config_NC) % config_NC][(j + config_MC)% config_MC];
	    }
	}
    }
  return cell_count;
}
```

## Game of Life (Eclipse Software)

![Game of Life Eclipse](https://github.com/zrajani/Game_of_Life/blob/master/Project%20Videos/ezgif.com-video-to-gif.gif)

The detailed version of working of this game can be found on Youtube Channel at [Game of Life Demonstration](https://youtu.be/_GVBSyjA3VA)

### Personal View
> This project gave some challenges but made me learn how the POSIX threads work and how one can create a real time game. :+1:

> This project was not possible without [Takis Zourntos](https://github.com/takiszourntos) :tada: would be grateful for his help always 
