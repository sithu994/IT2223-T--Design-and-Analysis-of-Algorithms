function sortedArray = mergeSort(array)
    if nargin == 0
        error('Input array is required.');
    end
    
    if numel(array) <= 1
        sortedArray = array;
        return;
    end

    mid = floor(numel(array) / 2);
    leftHalf = mergeSort(array(1:mid));
    rightHalf = mergeSort(array(mid+1:end));

    sortedArray = merge(leftHalf, rightHalf);
end

function mergedArray = merge(leftArray, rightArray)
    mergedArray = zeros(1, numel(leftArray) + numel(rightArray));
    i = 1; j = 1; k = 1;

    while i <= numel(leftArray) && j <= numel(rightArray)
        if leftArray(i) < rightArray(j)
            mergedArray(k) = leftArray(i);
            i = i + 1;
        else
            mergedArray(k) = rightArray(j);
            j = j + 1;
        end
        k = k + 1;
    end

    while i <= numel(leftArray)
        mergedArray(k) = leftArray(i);
        i = i + 1; k = k + 1;
    end

    while j <= numel(rightArray)
        mergedArray(k) = rightArray(j);
        j = j + 1; k = k + 1;
    end
end

% Example usage
array = [38, 27, 43, 3, 9, 82, 10];
sortedArray = mergeSort(array);
disp('Sorted Array:');
disp(sortedArray);
