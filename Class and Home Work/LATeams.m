%My function will take a start year and end year, as well as a variable
%number of teams
function[]=LATeams(startyear,endyear,varargin)
%First I clear all the variables except the start year, end year, and the
%team names the user has inputted
clearvars -EXCEPT -REGEXP startyear endyear varargin
clc
%Next, I need to load the data files
load LATeams

%I create a for loop that will iterate through all the team names the user
%has inputted
for k=1:length(varargin)
    %This will only work if someone inputs an LA team, otherwise, see line
    %188 for the else statement. This is case insensitive
    if strcmpi(varargin{k},'Lakers')==1||strcmpi(varargin{k},'Clippers')==1||strcmpi(varargin{k},'Sparks')==1||strcmpi(varargin{k},'Kings')==1||strcmpi(varargin{k},'Dodgers')==1||strcmpi(varargin{k},'Rams')==1||strcmpi(varargin{k},'Galaxy')==1
        %Use hold on so MATLAB will plot everything in one plot
        hold on
        %Turn grid on
        grid on
        %Set x-axis limits to show only the years from the input
        xlim([startyear endyear])
        if strcmpi(varargin{k},'Lakers')==1
            %Find the indices of the start and end year
            startyearpos=find(LakersSeason==startyear);
            endyearpos=find(LakersSeason==endyear);
            %Plot the Win-Loss percentage on the y-axis and the year on the
            %x-axis, for the range of years specified by the user.
            %Since I will be creating multiple plots, p(k) will be our main
            %plot that shows a solid line showing the win-loss percentage
            %for each year. 
            p(k)=plot(LakersSeason(startyearpos:endyearpos),LakersWL(startyearpos:endyearpos));
            %Now I want to set the line colour to be able to distinguish it
            %from the rest of the potential plots
            %Lakers/Sparks Purple,from http://teamcolorcodes.com/los-angeles-lakers-color-codes/
            set(p(k),'Color',[(85/256),(37/256),(130/256)]);
            %Now I find the index of the years the team won a championship,
            %and use it to find the years that they won
            ChampYearpos=find(LakersChamp==1);
            ChampYears=LakersSeason(ChampYearpos);
            %I want the points to be plotted on the line of p(k), so I find
            %the y value, which is the win-loss percentage
            ChampPerc=LakersWL(ChampYearpos);
            %I define this plot as c(k). This will be the same for all the
            %teams, and will indicate that a team won a championship for
            %that year by displaying an open circle marker
            c(k)=plot(ChampYears,ChampPerc,'o');
            set(c(k),'Color',[(85/256),(37/256),(130/256)]);
            %I also created a function that would mark when a team finished
            %first in the regular season. I use a similar procedure as I
            %did for c(k)
            firstpos=find(LakersFin==1);
            firstyear=LakersSeason(firstpos);
            firstperc=LakersWL(firstpos);
            %I use a square to mark when a team finished first in its conference during the
            %regular season
            f(k)=plot(firstyear,firstperc,'s');
            set(f(k),'Color',[(85/256),(37/256),(130/256)]);
        end
    
        if strcmpi(varargin{k},'Clippers')==1
            startyearpos=find(ClippersSeason==startyear);
            endyearpos=find(ClippersSeason==endyear);
            p(k)=plot(ClippersSeason(startyearpos:endyearpos),ClippersWL(startyearpos:endyearpos));
            %Clippers red, from http://teamcolorcodes.com/los-angeles-clippers-color-codes/
            set(p(k),'Color',[(237/256),(23/256),(76/256)]);
            %Since the Clippers have never won the playoffs, I will not be
            %creating a c(k) function to plot their championship win years
            firstpos=find(ClippersFin==1);
            firstyear=ClippersSeason(firstpos);
            firstperc=ClippersWL(firstpos);
            f(k)=plot(firstpos,firstperc,'s');
            set(f(k),'Color',[(237/256),(23/256),(76/256)]);
        end
    
        if strcmpi(varargin{k},'Sparks')==1
            startyearpos=find(SparksSeason==startyear);
            endyearpos=find(SparksSeason==endyear);
            p(k)=plot(SparksSeason(startyearpos:endyearpos),SparksWL(startyearpos:endyearpos));
            %Lakers/Sparks Gold, from http://teamcolorcodes.com/los-angeles-lakers-color-codes/
            set(p(k),'Color',[(253/256),(185/256),(39/256)]);
            ChampYearpos=find(SparksChamp==1);
            ChampYears=SparksSeason(ChampYearpos);
            ChampPerc=SparksWL(ChampYearpos);
            c(k)=plot(ChampYears,ChampPerc,'o');
            set(c(k),'Color',[(253/256),(185/256),(39/256)]);
            firstpos=find(SparksFin==1);
            firstyear=SparksSeason(firstpos);
            firstperc=SparksWL(firstpos);
            f(k)=plot(firstpos,firstperc,'s');
            set(f(k),'Color',[(253/256),(185/256),(39/256)]);
        end
    
        if strcmpi(varargin{k},'Kings')==1
            startyearpos=find(KingsSeason==startyear);
            endyearpos=find(KingsSeason==endyear);
            p(k)=plot(KingsSeason(startyearpos:endyearpos),KingsWL(startyearpos:endyearpos));
            %Kings Silver from http://teamcolorcodes.com/los-angeles-kings-color-codes/
            set(p(k),'Color',[(178/256),(183/256),(187/256)]);
            ChampYearpos=find(KingsChamp==1);
            ChampYear=KingsSeason(ChampYearpos);
            ChampPerc=KingsWL(ChampYearpos);
            c(k)=plot(ChampYear,ChampPerc,'o');
            set(c(k),'Color',[(178/256),(183/256),(187/256)]);
            firstpos=find(KingsFin==1);
            firstyear=KingsSeason(firstpos);
            firstperc=KingsWL(firstpos);
            f(k)=plot(firstyear,firstperc,'s');
            set(f(k),'Color',[(178/256),(183/256),(187/256)]);
        end
    
        if strcmpi(varargin{k},'Dodgers')==1
            startyearpos=find(DodgersSeason==startyear);
            endyearpos=find(DodgersSeason==endyear);
            p(k)=plot(DodgersSeason(startyearpos:endyearpos),DodgersWL(startyearpos:endyearpos));
            %Dodger Blue, from https://en.wikipedia.org/wiki/Dodger_blue
            set(p(k),'Color',[(30/256),(144/256),1]);
            ChampYearpos=find(DodgersChamp==1);
            ChampYears=DodgersSeason(ChampYearpos);
            ChampPerc=DodgersWL(ChampYearpos);
            c(k)=plot(ChampYears,ChampPerc,'o');
            set(c(k),'Color',[(30/256),(144/256),1]);
            firstpos=find(DodgersFin==1);
            firstyear=DodgersSeason(firstpos);
            firstperc=DodgersWL(firstpos);
            f(k)=plot(firstyear,firstperc,'s');
            set(f(k),'Color',[(30/256),(144/256),1]);
        end
    
        if strcmpi(varargin{k},'Galaxy')==1
            startyearpos=find(GalaxySeason==startyear);
            endyearpos=find(GalaxySeason==endyear);
            p(k)=plot(GalaxySeason(startyearpos:endyearpos),GalaxyWL(startyearpos:endyearpos));
            %LA Galaxy Navy Blue, from http://teamcolorcodes.com/la-galaxy-color-codes/
            set(p(k),'Color',[0,(36/256),(93/256)]);
            ChampYearpos=find(GalaxyChamp==1);
            ChampYears=GalaxySeason(ChampYearpos);
            ChampPerc=GalaxyWL(ChampYearpos);
            c(k)=plot(ChampYears,ChampPerc,'o');
            set(c(k),'Color',[0,(36/256),(93/256)]);
            firstpos=find(GalaxyFin==1);
            firstyear=GalaxySeason(firstpos);
            firstperc=GalaxyWL(firstpos);
            f(k)=plot(firstyear,firstperc,'s');
            set(f(k),'Color',[0,(36/256),(93/256)]);
            %There are a number of different championships in MSL, so I
            %decided to plot points that would show which specific
            %competition was won by the LA Galaxy for a particular year. 
            popos=find(GalaxyPlayoffs==1);
            poyear=GalaxySeason(popos);
            poperc=GalaxyWL(popos);
            %This will plot the years that the Galaxy won the Playoffs, and
            %will be indicated by an x
            playoff(k)=plot(poyear,poperc,'x');
            set(playoff(k),'Color',[0,(36/256),(93/256)]);
            %Now I will plot the LA Galaxy's US Open wins, marked by a
            %plus sign
            opos=find(GalaxyOpen==1);
            oyear=GalaxySeason(opos);
            operc=GalaxyWL(opos);
            open(k)=plot(oyear,operc,'+');
            set(open(k),'Color',[0,(36/256),(93/256)]);
            %Finally, the Galaxy's CONCACAF wins, marked with an asterisk
            conpos=find(GalaxyCONCACAF==1);
            conyear=GalaxySeason(conpos);
            conperc=GalaxyWL(conpos);
            con(k)=plot(conyear,conperc,'*');
            set(con(k),'Color',[0,(36/256),(93/256)]);
        end
    
        if strcmpi(varargin{k},'Rams')==1
            startyearpos=find(RamsSeason==startyear);
            endyearpos=find(RamsSeason==endyear);
            p(k)=plot(RamsSeason(startyearpos:endyearpos),RamsWL(startyearpos:endyearpos));
            %Rams Millenium Gold, from http://teamcolorcodes.com/los-angeles-rams-team-colors/
            set(p(k),'Color',[(201/256),(175/256),(116/256)]);
            ChampYearpos=find(RamsChamp==1);
            ChampYears=RamsSeason(ChampYearpos);
            ChampPerc=RamsWL(ChampYearpos);
            c(k)=plot(ChampYears,ChampPerc,'o');
            set(c(k),'Color',[(201/256),(175/256),(116/256)]);
            firstpos=find(RamsFin==1);
            firstyear=RamsSeason(firstpos);
            firstperc=RamsWL(firstpos);
            f(k)=plot(firstyear,firstperc,'s');
            set(f(k),'Color',[(201/256),(175/256),(116/256)]);
        end
        %Create a legend for the plot. It will correspond each argument to
        %each p, and by doing this I can avoid having MATLAB create a
        %legend that includes every single graph, and instead just
        %indicates which line corresponds to which team
        legend(p,varargin)
        title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
    else
        %If a user does not enter one of the valid teams, my function will
        %ask the user to give a valid input
        disp('Please enter a professional Los Angeles sports team')
    end       
end 
%Since I could not figure out a way to properly display this information in
%the legend, I will make MATLAB simply display this information in the
%command window
disp('Marker Meanings')
disp('----------------')
disp('o Championship Win')
disp('square First Place in Conference')
%This next part only needs to be displayed if someone wants to find the
%information for the LA Galaxy
for x=1:length(varargin)
    %To make sure that this only executes if someone has entered the Galaxy
    %as one of the teams, I create a conditional statement that checks if
    %the user has entered this team, and if so, it will display the
    %additional information. Note that by using strcmpi, this is case
    %insensitive and capitalization will not matter
    if strcmpi(varargin{x},'Galaxy')==1
        disp('x Won Playoffs')
        disp('+ Won US Open')
        disp('* Won CONCACAF')
    end
end
end