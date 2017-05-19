%
% Central Pattern Generators.
%

% The system always reverts to same periodic oscillations
multiplier = 1; % Change to 1, 10 or -10
tspan = [0 20]; % Simulation time window
y0 = multiplier * rand(1,8); % Initialiate random values



% Generate the Central Patterns
[t, y] = ode45(@(t,y)cpg(t,y), tspan, y0);

figure; plot(t, y); % Display the plot
