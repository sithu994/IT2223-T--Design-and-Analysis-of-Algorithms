a = randi([1, 10000], 1, 1000); % Create an array with 1000 random numbers
target = a(randi([1, 1000]));   % Randomly select target from the array

% Linear Search
tic;
found = false;
for i = 1:length(a)
    if a(i) == target
        found = true;
        break;
    end
end
time_linear = toc;

% Binary Search (after sorting)
a = sort(a);
startPoint = 1;
endPoint = length(a);
found = false;

tic;
while startPoint <= endPoint
    mid = floor((startPoint + endPoint) / 2);
    
    if a(mid) == target
        found = true;
        break;
    elseif target < a(mid)
        endPoint = mid - 1;
    else
        startPoint = mid + 1;
    end
end
time_binary = toc;

fprintf('Time for Linear Search: %f seconds\n', time_linear);
fprintf('Time for Binary Search: %f seconds\n', time_binary);

if found
    fprintf("Element found at index %d\n", mid);
else
    fprintf("Element not found\n");
end
%...........................
a = randi([1, 10000], 1, 1000); % Create an array with 1000 random numbers
target = 998;                   % Set target explicitly

% Linear Search
tic;
found = false;
for i = 1:length(a)
    if a(i) == target
        found = true;
        break;
    end
end
time_linear = toc;

% Binary Search (after sorting)
a = sort(a);
startPoint = 1;
endPoint = length(a);
found = false;

tic;
while startPoint <= endPoint
    mid = floor((startPoint + endPoint) / 2);
    
    if a(mid) == target
        found = true;
        break;
    elseif target < a(mid)
        endPoint = mid - 1;
    else
        startPoint = mid + 1;
    end
end
time_binary = toc;

fprintf('Time for Linear Search: %f seconds\n', time_linear);
fprintf('Time for Binary Search: %f seconds\n', time_binary);

if found
    fprintf("Element found at index %d\n", mid);
else
    fprintf("Element not found\n");
end
