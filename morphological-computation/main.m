%
% Simulates generic models of real compliant bodies in the form of
% nonlinear spring-damper systems.
%
disp('Running scripts...');

init_path % Setup folder paths

% Start the demonstation to perform the Volterra Task.
learning_Volterra

step_response(net_test_out) % Produces a step response of the network
plot_graph(net_test_out) % Plots the networks with colour coding
