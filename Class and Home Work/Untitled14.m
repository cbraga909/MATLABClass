load LATeams
varargin=input('input teams\n')
k=1;
while k<=nargin
    if strcmpi(varargin{k},'Lakers')==1||strcmpi(varargin{k},'Clippers')==1||strcmpi(varargin{k},'Sparks')==1||strcmpi(varargin{k},'Kings')==1||strcmpi(varargin{k},'Dodgers')==1||strcmpi(varargin{k},'Galaxy')==1||strcmpi(varargin{k},'Rams')==1
        if strcmpi(varargin{k},'Lakers')==1
            plot(LakersSeason,LakersWL)
            title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
        end
    
        if strcmpi(varargin{k},'Clippers')==1
            plot(ClippersSeason,ClippersWL)
            title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
        end
    
        if strcmpi(varargin{k},'Sparks')==1
            plot(SparksSeason,SparksWL)
            title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
        end
    
        if strcmpi(varargin{k},'Kings')==1
            plot(KingsSeason,KingsWL)
            title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
        end
    
        if strcmpi(varargin{k},'Dodgers')==1
            plot(DodgersSeason,DodgersWL)
            title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
        end
    
        if strcmpi(varargin{k},'Galaxy')==1
            plot(GalaxySeason,GalaxyWL)
            title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
        end
    
        if strcmpi(varargin{k},'Rams')==1
            plot(RamsSeason,RamsWL)
            title('Win-Loss Record of Various Teams'),xlabel('Season'),ylabel('Win-Loss Percentage');
        end 
        hold on
        legend(varargin{1:k-1})
    else
        disp('Please enter a Los Angeles professional sports team')
    end
    k=k+1;   
end
