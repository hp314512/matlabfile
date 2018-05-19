% 《实用大众线性代数（MATLAB版）》例5.6.2程序pla562
%  炮瞄雷达测量坐标与地面坐标的转换
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear,close all
syms s f r	                 % 设方位角s，俯仰角f及斜距r为符号变量
Q1=[cos(s),-sin(s),0;sin(s),cos(s),0;0,0,1]     % 给Q1赋值
Q2=[cos(f),0,-sin(f);0,1,0;sin(f),0,cos(f)] 	% 给Q2赋值,
Q=Q2*Q1,Xm=r*Q(:,1) 				% 求Q及r乘Q的第一列
Xmr=subs(Xm,[s,f,r],[30*pi/180,60*pi/180,10])	% 将s,f,r代入实际数值求结果Xmr
pause, double(Xmr)                              % 求Xmr的数值