%01.write a for loop to calculate the sum of the number from 1 to 10
sum = 0
for a=1:10
    sum = sum + a;
end
    disp(sum)

 %02.write code find factorial

fact =1;
num = 5;
for i=2:num
        fact = fact*i;
end
    disp(fact)

  %03\
x =10;
disp(['the number:',num2str(x)])
disp("the num is: " +x)
fprintf('The number is:%d ',x)
y=sprintf('the number is:%d ',x)
disp(y)


%04 user input
c = input('Enter the number :'); 
disp(['you entered',num2str(c)]);

%
% name =input('Enter your name :','s'); %input string
%disp(['you entered :',name])

%05 start 1 and < 10
d = 1;
while d <= 10
    disp(d)
    d = d+1;
end