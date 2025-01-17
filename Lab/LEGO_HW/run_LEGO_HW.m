% LEGO Football CWM UOXF 
% -- Trinity Term 2024

clc         % Clears command window
clearvars   % clears workspace
close all   % closes all open figures from previous run.


%% Initialisation
% Use this section to initialize all constants
% to be consistent with other students, we have suggested variable names.

g = 9.81; 					% gravity acceleration [m/sec^2]

% Physical Parameters
m = 0.024;					% wheel weight [kg]
R = 0.027;					% wheel radius [m]
J = m*R*R/2;                   % wheel inertia moment [kgm^2]
M = 0.6;					% body weight [kg]
W = 0.14;					% body width [m]
D = 0.04;					% body depth [m] 0.04 changed
H = 0.22;					% body height [m]
L = H/2;					% distance of the center of mass from the wheel axle [m]
Jpsi = M*L^2/3;                 % body pitch inertia moment [kgm^2]
Jphi = M*(W^2+D^2)/12;                 % body yaw inertia moment [kgm^2]
b = 0.0022;               	    % friction coefficient between body & DC motor
b_bar = 0.0022; 				% friction coefficient due to rotation along the wheel axis

% DC Motor Parameters (assumed to be similar to NXT after comparison experiments)
Rdc = 6.69;						% DC motor resistance [��]
Ke = 0.468;                   	% DC motor back EMF constant [Vsec/rad]
Kt = 0.317;                   	% DC motor torque constant [Nm/A]

%% Additional parameters for HW 
% HW parameters
Ts = 0.004;                     % Sample time in seconds
a_gc = 0.8;					    % calibrate gyro offset
a_gd = 0.999;						% compensate gyro drift

% Select yaw control and rescale references
dot_theta_ref = 7;
dot_phi_ref = -1.8;
thres_yaw = -1;

maxacc=2;
thetamy = 2.8;

%% Control gains
%% Linear System Matrices
% Use this section to calculate linear matrices of given system
% tip: Use temperory variables to calculate common long terms.
% tip: It is easier to spot errors if you calculate each element in
% different temperory variable.
q = ((2*m + M)*R^2 + 2*J)*(M*L^2 + Jpsi) - M^2*R^2*L^2 ;
Kfrac = Kt * Ke / Rdc;
A1 = [0,0,1,0;
    0,0,0,1;
    0,-g*R*M^2*L^2/q,-2*(M*R*L+M*L^2+Jpsi)*(Kfrac+b)/q - 2*(M*L^2+Jpsi)*b_bar/q,2*(M*R*L+M*L^2+Jpsi)*(Kfrac+b)/q;
    0,g*M*L*((2*m+M)*R^2+2*J)/q, 2*((2*m+M)*R^2+2*J+M*R*L)*(Kfrac+b)/q+2*M*R*L*b_bar/q,-2*((2*m+M)*R^2+2*J+M*R*L)*(Kfrac+b)/q];

B1 = [0;0;2*(M*R*L+M*L^2+Jpsi)*Kt/Rdc/q;-2*((2*m+M)*R^2+2*J+M*R*L)*Kt/Rdc/q];

C1 = [1,0,0,0;0,0,0,1];

D1 = [0;0];


Denom = .5*m*W^2+Jphi+J*W^2/(2*R^2);

A2 = [0,1;0,-W^2/(2*R^2)*(Kfrac+b+b_bar)/Denom];

B2 = [0;-W/R*Kt/Rdc/Denom];

C2 = [1,0];

D2 = 0;






%% Control design
% use this section to calculate controller gains using Linear System
% Matrices.

G = zpk(ss(A1,B1,C1,D1));

G_theta = G(1,1);
G_psidot = G(2,1);
s = tf('s');
% Ratio = K_I_psidot/K_P_psidot;
%Ratio = 9;
%L_psidot = (s+Ratio)/s * tf(G_psidot);
%rlocus(-minreal(L_psidot))
KPpsi = -5;
KIpsi = -50;

Gpi = KPpsi*((s+KIpsi/KPpsi)/s);

Gtilda = minreal(G_theta/(1+Gpi*G_psidot));

PM = 50; Tsett = 10;
zeta = PM/100; w_0 = 4.6/(zeta*Tsett);
xpole = w_0 * sqrt(1 - zeta^2) / (sqrt((1 - zeta^2))/zeta);
ypole = w_0 * sqrt(1 - zeta^2);


KDtheta = -1;
KItheta = w_0^2*KDtheta;
KPtheta = KDtheta * 2 * w_0 * zeta;

Gpid = KDtheta * (s^2+KPtheta/KDtheta*s+KItheta/KDtheta)/s;

%rlocus(minreal(Gpid*Gtilda))

Ltheta = Gpid*Gtilda;
Ttheta = Ltheta/(1+Ltheta);
%margin(Ltheta)
%step(Ttheta)
%% Phi controller
G_phi = zpk(ss(A2,B2,C2,D2));
% rlocus(-G_phi)

KPphi = -6;

Kopenloop = -A2(2,2)/B2(2,1);

%% Pole Placement

Anew = [A1, [0; 0; 0; 0];
    [1, 0, 0, 0], 0];
Bnew = [B1; 0];

P = [-xpole-0.1+1i*(ypole+0.1) -xpole-0.1-1i*(ypole+0.1) -431 -25 -4.04];

% [W, L] = eig((Anew-Bnew*[KPtheta,KIpsi,KDtheta,KPpsi,KItheta]))
% P = 100*[-4.31 -0.12 -0.006+0.0111i -0.006-0.0111i -0.0404];

Kpp = place(Anew,Bnew,P);

KPtheta = Kpp(1);
KIpsi = Kpp(2);
KDtheta = Kpp(3);
KPpsi = Kpp(4);
KItheta = Kpp(5);


Cnew = [1,0,0,0,0;0,0,0,1,0];



Gpi = KPpsi*((s+KIpsi/KPpsi)/s);

Gtilda = minreal(G_theta/(1+Gpi*G_psidot));

Gpid = KDtheta * (s^2+KPtheta/KDtheta*s+KItheta/KDtheta)/s;

Ltheta = Gpid*Gtilda;
Ttheta = Ltheta/(1+Ltheta);
margin(Ltheta)
stepinfo(Ttheta)

