% ��ʵ�ô������Դ�����MATLAB�棩����¼����5,6����ʾ����demoA5A6
% ������ͼ����
% �»�衱���,�廪��ѧ������,2014��7��
%
echo on,format compact
disp('��¼��MATLAB��顱������ͼ����A5~A6��ʾ����')
clear, close all,pause
disp('��¼��5��ʾ����')
y=[-1.4,-2.2,0.9,0.9,2.,-0.6,0.1,1.7,-2.3,-2.2],pause
plot(y),pause
title('my first plot'),pause 
xlabel('x'),ylabel('y'),grid on,pause
close,pause
t=0:0.5:4*pi,pause
y=exp(-0.1*t).*sin(t),pause
plot(t,y),hold on,pause
y1=exp(-0.1*t).*sin(t+1),pause
plot(t,y1,':'),pause
hold off, close,pause
% ��������������Ա�������
x=[-1:0.5:1]; y=[-1:0.5:1],pause 	
% ������ά�Ա��������������
[X,Y]=meshgrid(x,y),pause
plot(X,Y,'*'),pause
Z=2*X+3*Y+2,pause     % ��������������Z��������
mesh(X,Y,Z),pause		% ����ά����
hold on,pause
Z1=X-2*Y,pause
mesh(X,Y,Z1),pause
hold off,pause
ezplot('sin(x)*cos(x)'),pause
ezplot('3*x1+2*x2+3',[-4,4]),pause
hold off,ezmesh('3*x1+2*x2+3'),pause 
hold on, ezmesh('x1-2*x2+1'),pause
close, pause
syms a b c d,pause
A=[a,b;c,d],pause
D=det(A),pause
V=inv(A),pause



