close all
%filter design for the PECB
Fs = 2*100e3;       %sample at top and bottom of PWM
omega_c_current = 2*pi*9e3;
omega_c_pos = 2*pi*400;

%continuous transfer functions
num_current = [1];
den_current = [1/omega_c_current 1];
sys_current = tf(num_current,den_current);

num_pos = [1];
den_pos = [1/omega_c_pos 1];
sys_pos = tf(num_pos,den_pos);


%discrete transfer functions
dsys_current = c2d(sys_current, 1/Fs);
[num, den] = tfdata(dsys_current);
num_d_current = num{1};
den_d_current = den{1};
figure, bode(dsys_current), title('current controller')
a1_current = round(num_d_current(2)*2^13);  %2^13 is because v_adc_filt_lp.v uses a binary point of 13
a2_current = -round(den_d_current(2)*2^13);  %2^13 is because v_adc_filt_lp.v uses a binary point of 13
fprintf('CURRENT FILTER PARAMETERS: a1 = %g, a2 = %g\n', a1_current, a2_current);

dsys_pos = c2d(sys_pos, 1/Fs);
[num, den] = tfdata(dsys_pos);
num_d_pos = num{1};
den_d_pos = den{1};
figure, bode(dsys_pos), title('position controller')
a1_pos = round(num_d_pos(2)*2^13);  %2^13 is because v_adc_filt_lp.v uses a binary point of 13
a2_pos = -round(den_d_pos(2)*2^13);  %2^13 is because v_adc_filt_lp.v uses a binary point of 13
fprintf('POSITION FILTER PARAMETERS: a1 = %g, a2 = %g\n', a1_pos, a2_pos);
