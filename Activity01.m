%initialize account balance
balance = 1000
while true 
    disp('1.Deposit:');
    disp('Withdraw :');
    disp('Balance Inquiry ');
    disp('Exit:');
    choice = input('Please select an option(1-4:');

 switch choice
     case 1
         %Deposit
    depositAmount = input('Enter the amount to deposit:');
    if depositAmount > 0
        balance = balance + depositAmount;
        fprintf('Deposit succesfull! Your new balance is: %.2f\n', balance);
    else
        disp('Invalid amount! Please enter a positive value.\n');
    end
     case 2
            % Withdraw
            withdrawAmount = input('Enter the amount to withdraw: ');
            if withdrawAmount > 0
                if withdrawAmount <= balance
                    balance = balance - withdrawAmount;
                    fprintf('Withdrawal successful! Your new balance is: %.2f\n', balance);
                else
                    fprintf('Insufficient funds! Your current balance is: %.2f\n', balance);
                end
            else
                fprintf('Invalid amount! Please enter a positive value.\n');
            end
     case 3
         %Balance Inquiry
         fprintf('Your current balance is: %.2f\n', balance);
     case 4
         %Exit
         fprintf('Thank you for using ATM')
         break;
     otherwise
         fprintf('Invalid selection!Please choose a valid option (1-4).\n');
    end
end
