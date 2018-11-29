clc
clear all
close all

%% initial condition

lim1=-10;
N=100;
lim2=10;
t=lim1:1/N:lim2;
x=sin(t)+sin(2.*t);
%% input signal

figure(1);
subplot(311);
plot(t,x);
grid on;
title("Original Funcion");

%% Fourier Transform
[W,H]=fourier_transform(t,x,-100,100,100);
subplot(312);
plot(W,abs(H));
grid on;
title("Fourier Transform---Spectrum of original function");
%% Fourier Inverse Transform
[t_f,x_f]=fourier_inverse_transform(W,H,-10,10,100);
subplot(313);
plot(t_f,x_f);
grid on;
title("Fourier Inverse transform")