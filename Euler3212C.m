function C = Euler3212C(yaw_pitch_roll)

%   Euler3212C	
%
%	C = Euler3212C(q) zamienia kąty Eulera w kolejniści 3-2-1 
%	(yaw-pitch-roll) na macierz cosinusów C 3x3.
%	Kąty muszą być podane jako wektor yaw_pitch_roll 3x1.


st1 = sin(yaw_pitch_roll(1));
ct1 = cos(yaw_pitch_roll(1));
st2 = sin(yaw_pitch_roll(2));
ct2 = cos(yaw_pitch_roll(2));
st3 = sin(yaw_pitch_roll(3));
ct3 = cos(yaw_pitch_roll(3));

C(1,1) = ct2*ct1;
C(1,2) = ct2*st1;
C(1,3) = -st2;
C(2,1) = st3*st2*ct1-ct3*st1;
C(2,2) = st3*st2*st1+ct3*ct1;
C(2,3) = st3*ct2;
C(3,1) = ct3*st2*ct1+st3*st1;
C(3,2) = ct3*st2*st1-st3*ct1;
C(3,3) = ct3*ct2;
