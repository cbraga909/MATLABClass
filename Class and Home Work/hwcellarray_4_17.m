%Homework 4/17: Cell Arrays

%Store name of each metal into an individual character array
al=char('Aluminum');
cu=char('Copper');
fe=char('Iron');
mo=char('Molybdenum');
co=char('Cobalt');
v=char('Vanadium');
%Store all these character arrays into a cell array
name={al, cu, fe, mo, co, v};

%Store symbols into padded character array
symbol=char('Al','Cu','Fe','Mo','Co','V');

%Store atomic numbers into int8 array
atomicnum=int8([13, 29, 26, 42, 27, 23]);

%Store atomic weight into double-precision array
atomicweight=double([26.98, 63.55, 55.85, 95.94, 58.93, 50.94]);

%Store density into single-precision array
density=single([2.71 8.94 7.87 10.22 8.9 6.0]);

%Store structure into padded character array
structure=char('FCC','FCC','BCC','BCC','HCP','BCC');

%Create cell array from all above data
cellarray={name, symbol, atomicnum, atomicweight, density, structure};

name4=cellarray{1}(4) %Name of 4th element in array
atomweight4=cellarray{4}(4) %Atomic weight of 4th element in array
structure4=cellarray{6}(4,:) %Strucutre of 4th element in array
%In structure, colon is to display all characters

%Names of all the elements from character array
allnames=cellarray{1}

%Average weight from character array
averageweight=sum(cellarray{4})/length(cellarray{4})




