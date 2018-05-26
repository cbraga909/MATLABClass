function[]=losangTeams(varargin)

load LATeams

k=1;
while k<=nargin
   
    if strcmpi(varargin{k},'Lakers')==1
        plot(LakersSeason,LakersWL)
       
    end
    
    if strcmpi(varargin{k},'Clippers')==1
        plot(ClippersSeason,ClippersWL)
        
    end
    
    if strcmpi(varargin{k},'Sparks')==1
        plot(SparksSeason,SparksWL)
        
    end
    
    if strcmpi(varargin{k},'Kings')==1
        plot(KingsSeason,KingsWL)
        
    end
    
    if strcmpi(varargin{k},'Dodgers')==1
        plot(DodgersSeason,DodgersWL)
        
    end
    
    if strcmpi(varargin{k},'Galaxy')==1
        plot(GalaxySeason,GalaxyWL)
        
    end
    
    if strcmpi(varargin{k},'Rams')==1
        plot(RamsSeason,RamsWL)
   
    end 
    title('Win-Loss Record of Various Teams')
    xlabel('Season')
    ylabel('Win-Loss Percentage')
    hold on
    k=k+1; 
end
end