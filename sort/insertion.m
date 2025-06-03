function sortedArray = insertionSort(arr)
    n = length(arr);
    for i = 2:n %Outer Loop
        key = arr(i);
        j = i - 1; %Inner Loop
        
        % Move elements that are greater than key one position ahead
        while j > 0 && arr(j) > key
            arr(j + 1) = arr(j);
            j = j - 1;
        end
        
        arr(j + 1) = key;
    end
    sortedArray = arr; % Return sorted array
end

% Example usage
arr = [64, 34, 25, 12, 22, 11, 90];
sortedArray = insertionSort(arr);
disp(arr);
disp(sortedArray);
