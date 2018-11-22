theta_da = 4573.5393763294205;
i_abc = [-6.761285262419835E-4; -0.007480446794217238; 0.008156575320458768];
i_dq = [0.005746089080844525; -0.00948295393104782;  0.0];

T = sqrt(2/3)*[cos(theta_da) cos(theta_da - 2*pi/3) cos(theta_da + 2*pi/3);
              -sin(theta_da) -sin(theta_da-2*pi/3) -sin(theta_da+2*pi/3);
              1 1 1];
          
iT = sqrt(2/3)*[cos(theta_da) -sin(theta_da) 0.5;
              cos(theta_da-2*pi/3) -sin(theta_da+4*pi/3) 0.5;
              cos(theta_da+2*pi/3) -sin(theta_da+2*pi/3) 0.5];
          