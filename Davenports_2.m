function D = Davenports_2(w1,V1_B,V1_N,w2,V2_B,V2_N)

%   Davenports_2	
%
%	D = Davenports_2(w1,V1_B,V1_N,w2,V2_B,V2_N) na podstawie podanych 
%   dwóch zestawów wersorów podanych w układzie inercjalnym oraz 
%   związanym z satelitą oraz z podanych wag dla każdego zestawu 
%   wersorów, z wykorzystaniem metody Davenprta zwraca macierz obrotu
%   satlety D 3x3.


B=w1*V1_B*V1_N'+w2*V2_B*V2_N';

sigma=trace(B);

S=B+B';

Z=[B(2,3)-B(3,2);...
   B(3,1)-B(1,3);...
   B(1,2)-B(2,1)];

K=[sigma Z';...
    Z (S-sigma*eye(3))];

[eigvec,eigval]=eigs(K,1,w1+w2);
beta_max=eigvec;

D=EP2C(beta_max);