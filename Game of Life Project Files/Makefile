#
# Our most advanced makefile --- using implicit rules with CFLAGS, VPATH for prerequisites, .PHONY and
# suppressing errors in recipes. 
#
# author: T. Zourntos, emad studio
#

# define a variable to contain all of our object files (if this list changes, we only need to change the variable)
objects = source/gol.o source/cells.o source/display.o

# define a variable for our include directory
include = includes

# specify a search path for all prerequisites; looks for .o, .c or .h files in ./ or source/ or my_includes/
VPATH = source:includes

# provide a parameter for our implicit compilation rule (for gcc)
CFLAGS = -I$(include)

# our project will be called proj_ds, and it LINKS object files main_code.o, lib_ll.o and lib_bst.o
Game_of_Life : $(objects)
	gcc -o Game_of_Life $(objects) -lpthread -lncurses

# compile main_code.c to produce main_code.o, if needed
gol.o : source/gol.c gol_config.h cells.h display.g

# compile lib_ll.c, if needed
cells.o : source/cells.c cells.h gol_config.h

# compile lib_bst.c, if needed
display.o : source/display.c display.h gol_config.h

# a clean option that will remove proj_ds and any object files, with EXTRA features now!
.PHONY : clean # declaring clean as "phony" prevents it from being ignored if a file named "clean" happens to exist in the directory!
clean :
	-rm Game_of_Life $(objects)
#       ^
#       |_______ with the "-" in front of rm, the rm command will continue to execute in spite of any errors generated (such as "file does not exist")
