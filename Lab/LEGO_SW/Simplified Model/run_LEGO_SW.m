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
KPpsi = -10;
KIpsi = -100;

Gpi = KPpsi*((s+KIpsi/KPpsi)/s);

Gtilda = minreal(G_theta/(1+Gpi*G_psidot));

PM = 50; Tsett = 10;
zeta = PM/100; w_0 = 4.6/(zeta*Tsett);


KDtheta = -1;
KItheta = w_0^2*KDtheta;
KPtheta = KDtheta * 2 * w_0 * zeta;

Gpid = KDtheta * (s^2+KPtheta/KDtheta*s+KItheta/KDtheta)/s;

%rlocus(minreal(Gpid*Gtilda))

Ltheta = Gpid*Gtilda;
Ttheta = Ltheta/(1+Ltheta);
%margin(Ltheta)
%step(Ttheta)
%%
G_phi = zpk(ss(A2,B2,C2,D2));
%rlocus(-G_phi)

KPphi = 6;

Kopenloop = -A2(2,2)/B2(2,1);

%%
