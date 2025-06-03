%give me answer how to find bubble sort using mathlab

function sortedArray = bubbleSort(arr)
    n = length(arr); 
    for i = 1:n-1 %outer loop
        for j = 1:n-i %inner loop
            if arr(j) > arr(j+1)
                % Swap the elements
                temp = arr(j);
                arr(j) = arr(j+1);
                arr(j+1) = temp;
            end
        end
    end
    sortedArray = arr; % Return sorted array
end

% Example usage
arr = [64, 34, 25, 12, 22, 11, 90];
sortedArray = bubbleSort(arr);
disp(arr);

disp(sortedArray);
