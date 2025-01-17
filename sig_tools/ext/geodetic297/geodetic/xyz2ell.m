function [lat,lon,h]=xyz2ell(X,Y,Z,a,e2)
% XYZ2ELL  Converts cartesian coordinates to ellipsoidal.
%   Uses iterative alogithm.  Vectorized.  See also XYZ2ELL2,
%   XYZ2ELL3.
% Version: 2012-02-24
% Useage:  [lat,lon,h]=xyz2ell(X,Y,Z,a,e2)
%          [lat,lon,h]=xyz2ell(X,Y,Z)
% Input:   X \
%          Y  > vectors of cartesian coordinates in CT system (m)
%          Z /
%          a   - ref. ellipsoid major semi-axis (m); default GRS80
%          e2  - ref. ellipsoid eccentricity squared; default GRS80
% Output:  lat - vector of ellipsoidal latitudes (radians)
%          lon - vector of ellipsoidal longitudes (radians)
%          h   - vector of ellipsoidal heights (m)

% Revised 2012-02-24 Corrected starting latitude for iteration.

% Copyright (c) 2012, Michael R. Craymer
% All rights reserved.
% Email: mike@craymer.com

if nargin ~= 3 && nargin ~= 5
  warning('Incorrect number of input arguments');
  return
end
if nargin == 3
  [a,b,e2]=refell('grs80');
end

% Latitude and height convergence criteria
elat=1.e-12;
eht=1.e-5;

% Initial values for iteration
p=sqrt(X.*X+Y.*Y);
lat=atan2(Z,p.*(1-e2));
h=0;
dh=1;
dlat=1;

% Iterate until lat & h converge to elat & eht
while sum(dlat>elat) || sum(dh>eht)
  lat0=lat;
  h0=h;
  v=a./sqrt(1-e2.*sin(lat).*sin(lat));
  h=p./cos(lat)-v;
  lat=atan2(Z, p.*(1-e2.*v./(v+h)));
  dlat=abs(lat-lat0);
  dh=abs(h-h0);
end
lon=atan2(Y,X);
