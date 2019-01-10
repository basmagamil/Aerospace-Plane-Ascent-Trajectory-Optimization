# Aerospace-Plane-Ascent-Trajectory-Optimization
Matlab code to optimize the ascent trajectory of the Aerospace Plane until it reaches a certain orbit while satisfying the constraints.

## Files 
1- You need to have the five files in your path.<br/>
2- Run “opt63_run.m” file in order to declare and/or initialize the global variables.<br/>
3- Launch “optimtool”, use "ga - genetic algorithm" solver and specify “@opt63” to be the objective function with number of variables "20" and the following bounds:<br/>
Lower bound: [-1 -1 -1 -1 -1 -1 -1 -1 -1 -1 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020 0.1020]<br/>
Upper bound: [1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]<br/>
4- After the optimization finishes we can use “opt63_test” to plot our results.<br/>


