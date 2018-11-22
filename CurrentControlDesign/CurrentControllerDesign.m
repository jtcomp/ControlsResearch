wci = 1e3;
Vbus = 200;

L = 45.2e-3;
R = 10;

%CURRENT CONTROLLER CALCULATIONS:
    Kp = L*wci;
    Ki = R/L*Kp;
    Kpv = Kp/Vbus;
    Kiv = Ki/Vbus;

    fprintf('\nCURRENT: Kp/Vbus = %g', Kpv) ;
    fprintf('\nCURRENT: Ki/Vbus = %g\n', Kiv);

    Ccur = tf([Kp Ki], [1 0]);
    Gcur = tf(1, [L R]);
    CL_Cur = feedback(Gcur*Ccur, 1);