clc
clear all
syms x y z del
for R=[2]
    R
    a=0.2;
    for u1=[0.2]
    u=((u1^2)*a)
%p=input('First edge is p= ');
%q=input('Second edge is q=');
%r=input('third edge is r= ');
%s=input('fourth edge is s= ');
p=1; q=1; r=1; s=1;
qw=q;
q=r;
r=qw;
%a=input('length of square plate a=');
%R=input('aspect ratio is r=');
a=0.2;
delT=500;
%a=input('value of a=');
b=a/R;
%for u=[0]
%    u
%u=2;
%u=input('value of non local parameter u=');
%k=2;
 for k=[2]
     k
%k=input('value of k = ');
%h=input('value of h = ');
h=0.1*b;

%kw=input('value of kw=');
%kp=input('value of kp=');
Ec=(151*10^9);Em=(70*10^9);nu=0.3;pc=3000;pm=2707;
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
%D11=((part2*part1)+part3);
part4=((pc-pm)*h)/(k+1);
part5=pm*h;
Io=part4+part5;
Ect=151*10^9,Emt=70*10^9;
nuct=0.24,numt=0.298;
act=(18.591*10^(-6)),amt=0.000006941;

Dc=vpa(((Emt*(h^3))/(12*(1-(numt^2)))));
%kw=((100)*(10^3));
%kp=((200)*(10^3));
kw=(5)
ks=(10)
kp=(ks*Dc)/(a^2)
kw=(kw*Dc)/(a^4)
%kw=50;
%kp=200;
da=vpa(sqrt(pm*h*b^4/((Dc)*(3.14159265)^4)));
Ezt=(((Ect-Emt)*((z/h)+0.5)^k)+Emt);
nuzt=(((nuct-numt)*((z/h)+0.5)^k)+numt);
azt=(((act-amt)*((z/h)+0.5)^k)+amt);
Q11=Ezt/(1-(nuzt)^2);
Q12=(Ezt*nuzt)/(1-(nuzt)^2);
D11t=vpa(int((Q11*z^2*azt*delT),z,-h/2,h/2));
A11t=vpa(int((Q11*azt*delT),z,-h/2,h/2));
D12t=vpa(int((Q12*z^2*azt*delT),z,-h/2,h/2));
A12t=vpa(int((Q12*azt*delT),z,-h/2,h/2));
f1=(x^p)*(x-a)^r*(y^q)*(y-b)^s;
f2=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*x;
f3=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*y;
f4=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^2);
f5=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*x*y;
f6=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(y^2);
f7=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^3);
f8=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^2)*y;
f9=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*x*(y^2);
f10=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(y^3);
f11=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^4);
f12=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^3)*y;
f13=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^2)*y^2;
f14=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^1)*y^3;
f15=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*y^4;
f16=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^5);
f17=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^4)*y;
f18=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^3)*y^2;
f19=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^2)*y^3;
f20=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^1)*y^4;
f21=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*y^5;
f22=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^6);
f23=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^5)*y;
f24=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^4)*y^2;
f25=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^3)*y^3;
f26=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x^2)*y^4;
f27=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*(x)*y^5;
f28=((x^p)*(x-a)^r*(y^q)*(y-b)^s)*y^6;
f29=((x^p)*y^q*((x-a)^r)*(y-b)^s)*x^7;
f30=((x^p)*y^q*((x-a)^r)*(y-b)^s)*(x^6)*y;
f31=((x^p)*y^q*((x-a)^r)*(y-b)^s)*(x^5)*y^2;
f32=((x^p)*y^q*((x-a)^r)*(y-b)^s)*(x^4)*y^3;
f33=((x^p)*y^q*((x-a)^r)*(y-b)^s)*(x^3)*y^4;
f34=((x^p)*y^q*((x-a)^r)*(y-b)^s)*(x^2)*y^5;
f35=((x^p)*y^q*((x-a)^r)*(y-b)^s)*(x)*y^6;
f=[f1,f2,f3,f4,f5,f6,f7,f8,f9,f10 f11,f12,f13,f14,f15,f16,f17,f18,f19,f20,f21,f22,f23,f24,f25,f26,f27,f28,f29,f30, f31,f32,f33,f34,f35];


for i=1:1:12
    for j=1:1:12
         %T(i,j)=(int(int(((((diff(f(i),x))*(diff(f(j),x))))+(u*(((diff(diff(f(i),x),x))*((diff(diff(f(j),x),x))))+((diff(diff(f(i),x),y))*((diff(diff(f(j),x),y))))))),y,0,b),x,0,a));
         T(i,j)=(int(int(((((diff(f(i),x))*(diff(f(j),x)))+((diff(f(i),y))*(diff(f(j),y))))+(u*(((diff(diff(f(i),x),x))*((diff(diff(f(j),x),x))))+((diff(diff(f(i),y),y))*((diff(diff(f(j),y),y))))+(2*((diff(diff(f(i),x),y))*((diff(diff(f(j),x),y)))))))),y,0,b),x,0,a));
         %T(i,j)=(int(int((((diff(f(i),x))*(diff(f(j),x)))+((diff(f(i),y))*(diff(f(j),y)))),y,0,b),x,0,a));
          v(i,j)=((D11*(((diff(diff(f(i),x),x))*((diff(diff(f(j),x),x))))+(nu*(((diff(diff(f(i),x),x))*(diff(diff(f(j),y),y)))+((diff(diff(f(i),y),y))*(diff(diff(f(j),x),x)))))+((diff(diff(f(i),y),y))*((diff(diff(f(j),y),y))))+(2*(1-nu)*(diff(diff(f(i),x),y))*(diff(diff(f(j),x),y)))))+(kw*(((f(i))*(f(j)))+(u*(((diff(f(i),x))*diff(f(j),x))+((diff(f(i),y))*(diff(f(j),y)))))))+(kp*(((diff(f(i),x))*(diff(f(j),x)))+((diff(f(i),y))*(diff(f(j),y)))+(u*((((diff(diff(f(i),x),x))*((diff(diff(f(j),x),x)))))+(2*((diff(diff(f(i),x),y))*(diff(diff(f(j),x),y))))+((diff(diff(f(i),y),y))*((diff(diff(f(j),y),y)))))))));
        %v(i,j)=(diff(diff(f(i),x),x)*(diff(diff(f(j),x),x)))+((diff(diff(f(i),y),y))*(diff(diff(f(j),y),y)))+(2*nu*diff(diff(f(i),x),x))*(diff(diff(f(j),y),y))+(2*(1-nu)*((diff(diff(f(i),x),y))*(diff(diff(f(j),x),y))));
         k(i,j)=(int(int(v(i,j),y,0,b),x,0,a));
vt1(i,j)=(diff(diff(f(i),x),x)*(diff(diff(f(j),x),x)))+((diff(diff(f(i),y),y))*(diff(diff(f(j),y),y)))+(2*((diff(diff(f(i),x),y))*(diff(diff(f(j),x),y))));
kt1(i,j)=((int(int((D11t+D12t)*vt1(i,j),y,0,b),x,0,a)));
vt2(i,j)=((diff(f(i),x)*diff(f(j),x))+(diff(f(i),y)*diff(f(j),y)));
kt2(i,j)=(int(int((A11t+A12t)*(vt2(i,j)),y,0,b),x,0,a));
kt(i,j)=kt1(i,j)+kt2(i,j);
ktot(i,j)=k(i,j)-kt(i,j);
%ktot(i,j)=k(i,j);
    end
end
g=inv(T);
S=g*ktot;
N=eig(S);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
%Si=(((N)*(a^2))/D11);
%Si=(((N)*(a^2))/D11)*(3.14^2);
Si=((vpa(N)*(a^2)*12*(1-(nu^2)))/(Ec*(h^3)));

Bu=sort(Si)
end
    end
end