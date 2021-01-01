
clc
clear all
syms x y z 
for R=[1]
    R
p=1; q=1 ; r=1; s=1;
qw=q;
q=r;
r=qw;
a=1;
b=a/R
nu=0.3,
for k=[0]
    k
h=0.01;
kw=((0)*(10^3));
kp=((0)*(10^3));
Ec=(151*10^9);Em=(70*10^9);
nu=0.3;pc=3800;pm=2702;
fdz=(((z^2)/(1-nu^2))*(((Ec-Em)*((0.5-(z/h))^k))+Em));
D1=vpa(int((fdz),z,(-h/2),(h/2)))
fbz=(((z)/(1-nu^2))*(((Ec-Em)*((0.5-(z/h))^k))+Em));
B1=vpa(int((fbz),z,(-h/2),(h/2)))
faz=((1/(1-nu^2))*(((Ec-Em)*((0.5-(z/h))^k))+Em));
A1=vpa(int((faz),z,(-h/2),(h/2)))
D11=(D1-((B1^2)/A1))
%part1=((1/(k+3))-(1/(k+2))+(1/(4*(k+1))));
%part2=(((Ec-Em)*(h^3))/(1-(nu^2)));
%part3=((Em*(h^3))/(12*(1-(nu^2))));
%D11=vpa((part2*part1)+part3)
Dc=vpa(((Ec*(h^3))/(12*(1-(nu^2)))))
%E1=(380*10^9);
%D11=vpa((E1*(h^3))/(12*(1-(nu)^2)))
%D11=(2.06*10^10)
f1=(x^p)*(a-x)^r*(y^q)*(b-y)^s;
f2=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*x;
f3=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*y;
f4=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(x^2);
f5=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*x*y;
f6=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(y^2);
f7=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(x^3);
f8=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(x^2)*y;
f9=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*x*(y^2);
f10=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(y^3);
f11=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(x^4);
f12=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(x^3)*y;
f13=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(x^2)*y^2;
f14=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*(x^1)*y^3;
f15=((x^p)*(a-x)^r*(y^q)*(b-y)^s)*y^4;

f=[f1,f2,f3,f4,f5,f6,f7,f8,f9,f10 f11,f12,f13,f14,f15];

for i=1:1:7
    for j=1:1:7
        T(i,j)=(int(int((((diff(f(i),x))*(diff(f(j),x)))+((diff(f(i),y))*(diff(f(j),y)))),y,0,b),x,0,a));
         %v(i,j)=((D11*(((diff(diff(f(i),x),x))*((diff(diff(f(j),x),x))))+(nu*(((diff(diff(f(i),x),x))*(diff(diff(f(j),y),y)))+((diff(diff(f(i),y),y))*(diff(diff(f(j),x),x)))))+((diff(diff(f(i),y),y))*((diff(diff(f(j),y),y))))+(2*(1-nu)*(diff(diff(f(i),x),y))*(diff(diff(f(j),x),y))))));
        v(i,j)=((D11*(((diff(diff(f(i),x),x))*((diff(diff(f(j),x),x))))+(nu*(((diff(diff(f(i),x),x))*(diff(diff(f(j),y),y)))+((diff(diff(f(i),y),y))*(diff(diff(f(j),x),x)))))+((diff(diff(f(i),y),y))*((diff(diff(f(j),y),y))))+(2*(1-nu)*(diff(diff(f(i),x),y))*(diff(diff(f(j),x),y)))))+(kw*(f(i))*(f(j)))+(kp*(((diff(f(i),x))*(diff(f(j),x)))+((diff(f(i),y))*(diff(f(j),y))))));
%v(i,j)=((diff(diff(f(i),x),x))*(diff(diff(f(j),x),x)))+((1/(1^4))*diff(diff(f(i),y),y))*(diff(diff(f(j),y),y))+(0.3/(1^2))*(((diff(diff(f(i),x),x))*(diff(diff(f(j),y),y)))+(diff(diff(f(i),y),y)*(diff(diff(f(j),x),x))))+(1.4/(1^2))*(diff(diff(f(i),x),y)*(diff(diff(f(j),x),y)))+((kw/D11)*(1^4))*((f(i)*f(j)+u*((1^2)*(diff(f(i),x)*(diff(f(j),x)))+(((1^2)/(1^2))*(diff(f(i),y)*(diff(f(j),y)))))+(kp/D11)*(((1^2)*(diff(f(i),x)*(diff(f(j),x)))+(((1^2)/(1^2))*(diff(f(i),y)*(diff(f(j),y))))+u*(((diff(diff(f(i),x),x))*(diff(diff(f(j),x),x)))+((1/(1^4))*(diff(diff(f(i),y),y))*(diff(diff(f(j),y),y))+(0.3/(1^2))*(((diff(diff(f(i),x),x))*(diff(diff(f(j),y),y)))+(diff(diff(f(i),y),y)*(diff(diff(f(j),x),x))))))))));
 V(i,j)=(int(int((v(i,j)),y,0,b),x,0,a));
    end
end
g=inv(T);
S=g*V;
N=eig(S);
Si=(((N)*(a^2))/(Em*(h^3)));
%Si=(((N)*(a^2))/D11);
%Si=(((N)*(a^2))/D11)*(3.14^2);
%Si=((vpa(N)*(a^2))/(Dc*(3.14^2)));
Bu=sort(Si)
end
end
clc
clear all
