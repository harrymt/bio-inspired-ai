disp('Running scripts...');

[teachinginputs, teachingoutputs] = generatedata(10);
[weights] = learning(teachinginputs,teachingoutputs);
input = [-1 0.1 0.2];
neuron_output = neuron(input, weights);

% Print information we want
disp('Input: ');
disp(input);
disp('Weights: ');
disp(weights);
disp('Algorithm:');
fprintf('(%0.4f * %0.4f) + (%0.4f * %0.4f) + (%0.4f * %0.4f)\n', input(1), weights(1), input(2), weights(2), input(3), weights(3));
sum = (input(1) * weights(1)) + (input(2) * weights(2)) + (input(3) * weights(3));
fprintf('= %0.4f', sum);
fprintf(' * tanh (transfer function)\n= %0.4f\n\n', tanh(sum));
disp('Output: ');
disp(neuron_output);
