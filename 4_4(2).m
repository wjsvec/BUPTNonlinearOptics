lamda = linspace(300,500,301);
lamda_p = lamda*1e-3;
lamda_s = 2*lamda_p;
lamda_i = 2*lamda_p;
no_2w_squ = 2.259276 + 0.78056./(77.26408*lamda_p.*lamda_p-1) + (0.032513*lamda_p.*lamda_p)./(0.0025*lamda_p.*lamda_p-1);
no_w_squ = 2.259276 + 0.78056./(77.26408*lamda_i.*lamda_i-1) + (0.032513*lamda_i.*lamda_i)./(0.0025*lamda_i.*lamda_i-1);
ne_2w_squ = 2.132668 + 0.703319./(81.42631*lamda_p.*lamda_p-1) + (0.00807*lamda_p.*lamda_p)./(0.0025*lamda_p.*lamda_p-1);
ne_w_squ = 2.132668 + 0.703319./(81.42631*lamda_i.*lamda_i-1) + (0.00807*lamda_i.*lamda_i)./(0.0025*lamda_i.*lamda_i-1);
inside = (ne_2w_squ./no_w_squ ).*(no_2w_squ - no_w_squ )./(no_2w_squ - ne_2w_squ  );
theta = asin(sqrt(inside))*180/pi;
d_theta = abs(50.5480 - theta);
plot(lamda,d_theta);
xlabel("lamda")
ylabel("角度变化")
