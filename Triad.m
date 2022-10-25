function C = Triad(V1_B,V2_B,V1_N,V2_N)

%   Triad	
%
%	C = Triad(V1_B,V2_B,V1_N,V2_N) na podstawie podanych 
%	wersorów podanych w układzie inercjalnym oraz związanym 
%	z satelitą, z wykorzystaniem metody TRIAD zwraca macierz obrotu
%   satlety C 3x3.


t1_B=V1_B;
t2_B=cross(V1_B,V2_B)/norm(cross(V1_B,V2_B));
t3_B=cross(t1_B,t2_B);

BT=[t1_B t2_B t3_B];


t1_N=V1_N;
t2_N=cross(V1_N,V2_N)/norm(cross(V1_N,V2_N));
t3_N=cross(t1_N,t2_N);

NT=[t1_N t2_N t3_N];

C=BT*NT';

