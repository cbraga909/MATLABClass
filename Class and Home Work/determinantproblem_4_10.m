%Homework 4/10 Determinant Function

%Given matrices
A=[2 -1; 4 5];
B=[4 2; 2 1];
C=[2 0 0; 1 2 2; 5 -4 0];

%Using determinant function
deta=det(A);
detb=det(B);
detc=det(C);

%I create a vector of the values of determinants
determinants=[deta detb detc];
%Now I create a character vector for matrix A, B, and C
x=char({'A' 'B' 'C'});
%Set k=1 for use with while loop
k=1;

%There are only 3 values in this matrix, so I set the loop to continue
%while k<=3, for simplicity. Another way to do this would be to set
%k<=length(determinants)
while k<=3 
    %When a determinant is equal to 0, it is singular and has no inverse
    if determinants(k)==0 
        %I want to display both the determinant and whether or not it has
        %an inverse. I use %s for the string and %f for a numerical value
        fprintf('The determinant of matrix %s is %f, so it is singular and does not have an inverse\n',x(k), determinants(k)) 
   %If the determinant is not equal to 0, it does have an inverse
    else 
        fprintf('The determinant of matrix %s is %f, so it has an inverse\n', x(k), determinants(k))
    end
    %Add 1 to k to move on to the next term so that the loop will repeat
    %until k<=3 is no longer true
    k=k+1;
end
