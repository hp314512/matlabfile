% ��ʵ�ô������Դ�����MATLAB�棩����������6.04����pla604
%  ˫���鶯��ѧϵͳ
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
clear,close all
m1=input('m1=��ǧ�ˡ� ');       % �û���������m1
m2=input('m2=��ǧ�ˡ� ');       % �û���������m2
theta=input('theta���ȡ�= ');   % �û�����б��theta
theta=theta*pi/180; g=9.81;     % �����任 
A = [ m1*cos(theta),-m1, -sin(theta), 0;...         % ����A��ֵ
      m1*sin(theta),  0,  cos(theta), 0;...
   	   		0			 , m2, -sin(theta), 0;...
         	0			 ,  0, -cos(theta), 1 ];
B = [ 0, m1*g, 0, m2*g]';                           % ����B��ֵ
X=A\B;                                              % ������
a1=X(1),a2=X(2),N1=X(3),N2=X(4)                     % ��ĸ�����


