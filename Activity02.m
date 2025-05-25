% Initialize an array to store marks
marks = zeros(1,5);
%enter marks for 5 students
fprintf('Enter marks for 5 students')
for i = 1:5
     marks(i) = input(sprintf('Enter mark for student %d: ', i));
    if marks(i) >= 90 && marks(i) <= 100
        fprintf('Grade: A');
    elseif marks(i) >= 80 && marks(i) < 90
        fprintf('Grade: B');
    elseif marks(i) >= 70 && marks(i) < 80
        fprintf('Grade: C');
    elseif marks(i) >= 60 && marks(i) < 70
        fprintf('Grade: D');
    elseif marks(i) >= 0 && marks(i) < 60
        fprintf('Grade: F');
    else
        fprintf('Invalid marks! Please enter a value between 0 and 100.\n');
        i = i - 1;
    end
end
while true
    fprintf('\nMenu:');
    fprintf('1. Show all marks as a bar chart');
    fprintf('2. Show average marks:');
    fprintf('3. Exit');
    choice = input('Please select an option (1-3): ');
    
    switch choice
        case 1
            figure;
            bar(marks);
            title('Marks of Students');
            xlabel('Student Number');
            ylabel('Marks');
            grid on;
        case 2
           
            averageMarks = mean(marks);
            fprintf('The average marks of the students is: %.2f\n', averageMarks);
        case 3
            
            fprintf('Thank you for using the program. Goodbye!\n');
            break;
        otherwise
            fprintf('Invalid choice! Please select a valid option (1-3).\n');
    end
end
