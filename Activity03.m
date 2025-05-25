

numVoters = input('Enter the total number of voters: ');


votes = [0, 0, 0, 0];


for i = 1:numVoters
    fprintf('\nVoting Menu:\n');
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    choice = input(sprintf('Voter %d, enter your choice (1-4): ', i));
    
   
    switch choice
        case 1
            votes(1) = votes(1) + 1;
        case 2
            votes(2) = votes(2) + 1; 
        case 3
            votes(3) = votes(3) + 1; 
        case 4
            votes(4) = votes(4) + 1; 
        otherwise
            fprintf('Invalid vote! Vote not counted.\n');
    end
end


fprintf('\nVote Counts:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));


[maxVotes, winnerIndex] = max(votes);
if maxVotes > 0
    fprintf('\nWinner: Candidate %c with %d votes!\n', char('A' + winnerIndex - 1), maxVotes);
else
    fprintf('\nNo winner. No valid votes were cast.\n');
end


while true
    fprintf('\nResult Visualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (creative visualization)\n');
    fprintf('4. Exit\n');
    choice = input('Select an option (1-4): ');
    
    switch choice
        case 1
            % Bar Chart
            bar(votes);
            title('Votes for Candidates');
            xlabel('Candidates (1 = A, 2 = B, 3 = C, 4 = D)');
            ylabel('Number of Votes');
            grid on;
        case 2
            % Pie Chart
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Proportion of Votes');
        case 3
            % Scatter Plot (creative visualization)
            scatter(1:4, votes, 100, 'filled');
            title('Scatter Plot of Votes');
            xlabel('Candidates (1 = A, 2 = B, 3 = C, 4 = D)');
            ylabel('Number of Votes');
            grid on;
        case 4
            % Exit
            fprintf('Thank you for participating in the election. Goodbye!\n');
            break;
        otherwise
            fprintf('Invalid choice! Please select a valid option (1-4).\n');
    end
end
