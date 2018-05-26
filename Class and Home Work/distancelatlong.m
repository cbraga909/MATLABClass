LatLon1 = [latitude longitude];

R = 6371000; 
dla = abs(bsxfun(@minus,LatLon1(:,1),LatLon1(:,1)'));
dlo = abs(bsxfun(@minus,LatLon1(:,2),LatLon1(:,2)'));
lac = cosd(LatLon1);
a = sind(dla/2).^2 + lac(:,1)*lac(:,1)'.*sind(dlo/2).^2;
d = R*2*atan2(sqrt(a), sqrt(1 - a));
distance=d(:,1)

%Source: https://www.mathworks.com/matlabcentral/answers/35423-finding-distance-from-text-data-for-latitude-longitude-and-creating-new-column-of-data-for-distance