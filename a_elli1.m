clear all
syms x y q r a b
w=inline('w=((1-(x/a).^2-(y/b).^2).^2)*(x^(q-r)*y^r)','x')
N=inline('((diff(w(x),x,2).^2))+2*0.3*(diff(w(x),x,2)*diff(w(x),y,2))+((diff(w(x),y,2)).^2)+(2/(1+0.3))*(diff(diff(w(x),y),x))^2)/(((diff(w(x),x)).^2)+((diff(w(x),y)).^2))','x,y,q,r,a,b')
% Y=inline('N*(a.^2)','x,y,q,r,a,b')
N(2,2,0,0,2,2)