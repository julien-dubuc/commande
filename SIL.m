Ke=1/396 *60/(2*pi); % V/rad/s =0.241 =Kc
L=0.42*10^(-3); %Henri
J=41.4 * 10^(-7); %gcm^2 -> kgm^2
Kc=24.1 * 10^(-3); %Nm/A
Cr=0;
Fs=0;
%b=1/(49.1*10^(3)*2*pi/60); %tr/min/mNm ->  N.m/(rad/s)
R=2.99; %Ohm


M=J/L^2;
g=9.81;

%à vide
I_vide = 85.9 * 10^(-3); % A
Omega_vide = 4630 * 2 * pi / 60; % rad/s
b = (Kc * I_vide) / Omega_vide; % Donne environ 4.27e-6 N.m/(rad/s)



%motor = ss(motor1.A, motor1.B, motor1.C, motor1.D);
%tf(motor)
%zpk(motor)
%[z1, p1, k1] = zpkdata(motor);


