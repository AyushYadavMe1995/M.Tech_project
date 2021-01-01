clear all
clc
syms x y a b q r ;
w=((1-(x/a).^2-(y/b).^2).^2)*(x^(q-r)*y^r)
N(x ,y ,a, b, q ,r)=(((diff(w,x,2).^2))+2*0.3*(diff(w,x,2)*diff(w,y,2))+((diff(w,y,2)).^2)+(2/(1+0.3))*(diff(diff(w,y),x))^2)/(((diff(w,x)).^2)+((diff(w,y)).^2))
% y is a non dimensional buckling load or buckling parameter
x=2;
y=2;
a=2;
b=2;
q=0;
r=0;
% y=N*(a.^2)(Y is buckling parameter)
Y=N( x, y, a, b, q, r)*(a^2)


