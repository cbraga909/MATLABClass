%Homework 4/17: Storing Planetary Data with Structure arrays
clear 
clc
%Initial value of k
k=1;

%Allow user to pick from menu
response=menu('Would you like to enter planetary data?', 'Yes','No');


%While the response is yes, continue loop
while response==1
    disp('Please enter strings in single quotes')
    %Prompt user to input various data
    planet(k).row=k;
    planet(k).name=input('Enter the name of the planet in single quotes\n');
    planet(k).mass=input('Enter the mass of the planet, in earth multiples\n');
    planet(k).year=input('Enter the length of a year on the planet, in earth years\n');
    planet(k).orbit=input('Enter the mean orbital velocity of the planet, in km/sec\n');
    
    %Display what the user has inputted
    planet(k)
    %Ask user whether this is correct
    increment=menu('Review the data. Is this correct?', 'Yes', 'No');
    %If it is incorrect, allow user to fix inputs
    while increment==2
        %User chooses from menu of items to fix
        n=menu('Which input would you like to fix?','Name','Mass','Year','Orbit', 'None');
        if n==1
            planet(k).name=input('Enter the name of the planet in single quotes\n');
            
        elseif n==2
            planet(k).mass=input('Enter the mass of the planet, in earth multiples\n');
            
        elseif n==3
            planet(k).year=input('Enter the length of a year on the planet, in earth years\n');
            
        elseif n==4
            planet(k).orbit=input('Enter the mean orbital velocity of the planet, in km/sec\n');
        %If there is nothing else to fix, break out of this loop
        else
            break
        end
    end
    k=k+1; %Go on to next value
    %Ask user whether they would like to enter more planetary data
    response=menu('Would you like to enter more planetary data?', 'Yes','No');
end

%Create table and display values
t=struct2table(planet);
disp(t)
a=menu('Review this data one last time. Is everything correct?','Yes','No');

while a==2
    b=input('In which row is the element you would like to change?\n');
    c=menu('What would you like to change?', 'Name','Mass','Year','Orbit','None')
    if c==1
        planet(b).name=input('Input a new name, in single quotations\n');
    elseif c==2
        planet(b).mass=input('Input the mass of the planet, in earth multiples\n');
    elseif c==3
        planet(b).year=input('Input the length of the year, in earth years\n');
    elseif c==4
        planet(b).orbit=input('Input the mean orbital velocity, in km/s\n');
    else
        break
    end
    t=struct2table(planet);
    disp(t)
    a=menu('Review this data one last time. Is everything correct?','Yes','No');
end

t=struct2table(planet);
disp(t)
