# Aerospace-Plane-Ascent-Trajectory-Optimization
The problem is to optimize the ascent trajectory of the Aerospace Plane until it reaches a certain orbit while satisfying the constraints.

## Files 
1- You need to have the five files in your path.
2- Run “opt63_run.m” file in order to declare and/or initialize the global variables. 
3- Launch “optimtool”, use "ga - genetic algorithm" solver and specify “@opt63” to be the objective function with number of variables "20" and the following bounds:
Lower bound: [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020]
Upper bound: [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]
4- After the optimization finishes we can use “opt63_test” to plot our results.


