function [t,x_Matrix]=fourier_inverse_transform(input_omega,input_X,lim1_t,lim2_t,N_t)

t=lim1_t:1/N_t:lim2_t;
x_Matrix=zeros(1,length(t));
integration_loop_i=1;
for t_loop=lim1_t:1/N_t:lim2_t
x=integration_withcoordinates_f(input_omega,input_X.*exp(1i.*input_omega.*t_loop));
x_Matrix(1,integration_loop_i)=x/2/pi;
integration_loop_i=integration_loop_i+1;
end
