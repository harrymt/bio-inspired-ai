function [output] = cellularAutomaton(start, n)
size = length(start);
fprintf('Cellular Automaton with %d generations and starting grid (size: %d) of:\n', n, size);
disp(start);
startGrid = start; % [0 0 1 0 1 0 0 0 0];
numGenerations = n;% 5;
prevGrid = startGrid;
currentGrid = zeros(1, size);
for gen = 1:1:numGenerations
    for i = 1:1:size
        if i == 1
            if ([prevGrid(i) prevGrid(i) prevGrid(i+1)] == [0 0 0]) % reflected boundary condition
                currentGrid(i) = 0;
            elseif ([prevGrid(i) prevGrid(i) prevGrid(i+1)] == [0 0 1])
                currentGrid(i) = 1;
            elseif [prevGrid(i) prevGrid(i) prevGrid(i+1)] == [0 1 0]
                currentGrid(i) = 0;
            elseif [prevGrid(i) prevGrid(i) prevGrid(i+1)] == [0 1 1]
                currentGrid(i) = 1;
            elseif [prevGrid(i) prevGrid(i) prevGrid(i+1)] == [1 0 0]
                currentGrid(i) = 1;  
            elseif [prevGrid(i) prevGrid(i) prevGrid(i+1)] == [1 0 1]
                currentGrid(i) = 0;
            elseif [prevGrid(i) prevGrid(i) prevGrid(i+1)] == [1 1 0]
                currentGrid(i) = 1;
            elseif [prevGrid(i) prevGrid(i) prevGrid(i+1)] == [1 1 1]
                currentGrid(i) = 0;    
            end
        elseif i == size
            if [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [0 0 0] % Reflected boundary condition
                currentGrid(i) = 0;
            elseif [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [0 0 1]
                currentGrid(i) = 1;
            elseif [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [0 1 0]
                currentGrid(i) = 0;
            elseif [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [0 1 1]
                currentGrid(i) = 1;
            elseif [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [1 0 0]
                currentGrid(i) = 1;  
            elseif [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [1 0 1]
                currentGrid(i) = 0;
            elseif [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [1 1 0]
                currentGrid(i) = 1;
            elseif [prevGrid(i-1) prevGrid(i) prevGrid(i)] == [1 1 1]
                currentGrid(i) = 0;    
            end
        else
            if prevGrid(i-1:i+1) == [0 0 0]
                currentGrid(i) = 0;
            elseif prevGrid(i-1:i+1) == [0 0 1]
                currentGrid(i) = 1;
            elseif prevGrid(i-1:i+1) == [0 1 0]
                currentGrid(i) = 0;
            elseif prevGrid(i-1:i+1) == [0 1 1]
                currentGrid(i) = 1;
            elseif prevGrid(i-1:i+1) == [1 0 0]
                currentGrid(i) = 1;  
            elseif prevGrid(i-1:i+1) == [1 0 1]
                currentGrid(i) = 0;
            elseif prevGrid(i-1:i+1) == [1 1 0]
                currentGrid(i) = 1;
            elseif prevGrid(i-1:i+1) == [1 1 1]
                currentGrid(i) = 0;    
            end
        end
    end
    fprintf('Generation %d:\n', gen);
    disp(currentGrid);
    prevGrid = currentGrid;
end

output = currentGrid;