% ��ʵ�ô������Դ�����MATLAB�棩����¼A4��ʾ����demoA4
% ���������
% �»�衱���,�廪��ѧ������,2014��7��
%
echo on,format compact
disp('��¼��MATLAB��顱���������A����ʾ����')
t=[0:0.02:1],pause
theta = linspace(0,2*pi,9),pause
X =[1,2,3],Y=[4,5,6],pause
Z1=X.*Y,pause
Z2=X./Y,pause
Z3=X.^Y,pause
Z4=X.^2,pause
x=[0:0.1:pi/4]';[x,sin(x),cos(x),tan(x)],pause
disp('         x     sin(x)    cos(x)    tan(x) '),
disp([  x     sin(x)    cos(x)    tan(x) ]),pause

