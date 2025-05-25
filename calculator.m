%find the grade using control structure.
gpa = zeros(1,5);
marks=zeros(1,5);

for x=1:5
    marks(x)=input("Enter the marks:");
if(marks(x)>100)
    disp("not a valid marks")
elseif(marks(x)>=90)
    disp('A+')
    gpa(x)=4.0;
elseif(marks(x)>=80)
        disp('A')
        gpa(x)=4.0;
elseif(marks(x)>=70)
        disp('B')
        gpa(x)=3.0;
elseif(marks(x)>=60)
        disp('C')
        gpa(x)=2.0;
elseif(marks(x)>=50)
        disp('D')
        gpa(x)=1.0;
else
    disp('F')
    gpa(x)=0.0;

end
end

GPA=mean(gpa);
fprintf('\nYour GPA is: %.2f\n',GPA);