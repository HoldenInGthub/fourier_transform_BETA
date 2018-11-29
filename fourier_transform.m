function [omega,X_Matrix]=fourier_transform(input_t,input_x,lim1_F,lim2_F,N_F)

omega=lim1_F:1/N_F:lim2_F;
X_Matrix=zeros(1,length(omega));
integration_loop_i=1;
for omega_loop=lim1_F:1/N_F:lim2_F
    X=integration_withcoordinates_f(input_t,input_x.*exp(-1i*omega_loop.*input_t));
    X_Matrix(1,integration_loop_i)=X;
    integration_loop_i=integration_loop_i+1;
end
