% ��ʵ�ô������Դ�����MATLAB�棩����6.8����pla608a
% Բ׶���ߵ��������
% �»�衱���,�廪��ѧ�����磬2014��7��
%
clear, close all
x=[-1;0;2;2;0;1];y=[0;2;3;-2;-3;2]; 
A=[x.^2,x.*y,y.^2,x,y],
b=-ones(6,1),pause
%
K=A\b
[X,Y]=meshgrid(-4:0.1:4);
Z=K(1)*X.^2+K(2)*X.*Y+K(3)*Y.^2+K(4)*X+K(5)*Y+1;
contour(X,Y,Z,[0 0]),hold on
plot(x,y,'s'),grid on
