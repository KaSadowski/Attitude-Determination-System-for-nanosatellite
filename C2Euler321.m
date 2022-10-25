function q = C2Euler321(C)

%   C2Euler321
%
%	Q = C2Euler321(C) zamienia macierz cosinusów C 3x3 
%	na odpowiadające kąty Eulera (3-2-1, yaw-pitch-roll).

q(1) = atan2(C(1,2),C(1,1));
q(2) = asin(-C(1,3));
q(3)= atan2(C(2,3),C(3,3));
q=q';
