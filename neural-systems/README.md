## Neural Systems


### Compute ANN outcome

How to compute the outcome of an ANN given the weights, structure, and input.

The attached MatLab code snippets, computes the outcome of an ANN.

#### Build
- Load the `main.m` file and run it.
- You should see the following information:

```
>> main
Running scripts...
Input:
   -1.0000    0.1000    0.2000

Weights:
    0.3051   -0.9238    0.7022

Algorithm:
(-1.0000 * 0.3051) + (0.1000 * -0.9238) + (0.2000 * 0.7022)
= -0.2570 * tanh (transfer function)
= -0.2515

Output:
   -0.2515
```
