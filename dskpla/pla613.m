% ��ʵ�ô������Դ�����MATLAB�棩����6.13����pla613
%  ��е���ٶȱ任���ſ˱Ⱦ���
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
clear,close all
syms l1 l2 t1 t2
A=[-l1*sin(t1)-l2*sin(t1+t2),-l2*sin(t1+t2);l1*cos(t1)+l2*cos(t1+t2),l2*cos(t1+t2)]
V=inv(A)

