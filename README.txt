To just visualize the graphs, open the MATLAB file and run section by section to see different initial conditions

If you want to change create your own initial conditions in the source code (c++ file),
line 11 - number of terms 
line 13 - time step
line 14 - the term being divided by is the length of your initial condition
line 15 - viscosity constant
line 43 to 46 - represent the initial conditions to use
line 52 - txt file name

After that just load the file into MATLAB and make sure the for loop iterates the amount of rows you have 
Do be cautious as if you use a set of values that are unstable, the txt file will contain values of -inf and -NaN
which MATLAB can't read so be careful!

