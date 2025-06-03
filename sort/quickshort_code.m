function sortedArray = quickSort(array)
    if numel(array) <= 1
        sortedArray = array;
        return;
    end

    pivot = array(end); % Choosing the last element as the pivot
    leftArray = array(array < pivot); % Elements smaller than pivot
    rightArray = array(array > pivot); % Elements greater than pivot
    equalArray = array(array == pivot); % Elements equal to pivot

    sortedArray = [quickSort(leftArray), equalArray, quickSort(rightArray)];
end

% Example usage
array = [38, 27, 43, 3, 9, 82, 10];
sortedArray = quickSort(array);
disp('Sorted Array:');
disp(sortedArray);
