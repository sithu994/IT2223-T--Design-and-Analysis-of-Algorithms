array = [64, 25, 12, 22, 11]; % Define the array
n = length(array); % Get the number of elements

for i = 1:n-1
    minIndex = i;
    
    for j = i+1:n
        if array(j) < array(minIndex)
            minIndex = j;
        end
    end
    if minIndex ~= i
        temp = array(i);
        array(i) = array(minIndex);
        array(minIndex) = temp;
    end
end

disp('Sorted Array:');
disp(array);
