%
% Cellular Automaton scripts
%
disp('Running scripts...');

generations = 2; % Change me
starting_grid = [0 0 1 0 0 0]; % Change me
output = cellularAutomaton(starting_grid, generations);
disp('Final result:');
disp(output);