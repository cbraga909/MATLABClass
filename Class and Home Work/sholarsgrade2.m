examp=.48;
quizp=.15;
hwlabp=.12;
finalp=.25;

exam(1)=90;
exam(2)=96;
exam(3)=84.9;
exam(4)=85;

quiz=[88.6 77.1 106.7 100 28.6 21*100/20 100]';
for j=1:length(quiz)
    if quiz(j)==min(quiz)
        quiz(j)=0;
    end
end
quizavg=sum(quiz)/(length(quiz)-1);

homework=[97.6 100 100 60.9 73 81.6 100*13/19 100*50/49 100*18/31 100 100*21/28 100*21/34 100*20/29]';
packets=[87.5 100 100 100]';
allhw=[homework; packets];
hwgrade=(sum(allhw)-min(homework))/(length(allhw)-1);

finalexam=[75:1:102]';

for k=1:length(finalexam)
    if finalexam(k)>84.9
        exam(3)=finalexam(k);
    end
    examavg(k)=sum(exam(1:4))/4;
    fin(k)=(examp.*examavg(k)) + (quizp*quizavg) + (hwgrade*hwlabp) + (finalp.*finalexam(k));
    finalgrade=fin';
end
examaverage=examavg';
table(finalexam,examaverage,finalgrade)