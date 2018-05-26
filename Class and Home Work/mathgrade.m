exam1=input('Input grade for exam 1\n');
exam2=input('Input grade for exam 2\n');
exam3=input('Input grade for exam 3\n');
exam=[exam1, exam2, exam3];
final=input('Input final exam grade\n');
ec=10;

k=1;
while k<4
    if final>exam(k)==true && exam(k)==min(exam)
        exam(k)=0.85*final
    end
    k=k+1;
end

finalgrade=(sum(exam)+ec)/3*0.55 + final*0.30 + 0.12*85 + 3