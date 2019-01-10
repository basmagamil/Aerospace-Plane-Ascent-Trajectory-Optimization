function[state,options,optchanged] = gaOutput(options,state,flag)
optchanged = false;
persistent best_Input_History
%you should declare  best_Input_History=[]; in command window before running the genetic algorithm 
[m,i]=min(state.Score);
fprintf('best selection in this iteration')
state.Population(i,:)
best_Input_History=[best_Input_History;state.Population(i,:)]
assignin('base','BestInputhistory',best_Input_History);
fprintf('--------------------------')
end



% forsaken!
% fprintf(' Vector containing the best score in each generation')
% state.Best 
% fprintf(' Generation at which the last improvement in fitness value occurred')
% state.LastImprovement
% fprintf('Population in the current generation')
% state.Population 
% fprintf('Scores of the current population')
% fprintf('Indices of individuals selected for elite, crossover, and mutation')
% state.Selection