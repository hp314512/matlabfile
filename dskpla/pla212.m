% 《实用大众线性代数（MATLAB版）》例题2.12程序pla212
%  lu分解与消元法等价 
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear, close all
format rat, format compact
C=[3,2,-2,-4;3,3,-1,-5;2,2,-1,4]	% 给增广矩阵C赋值
E1=[1,0,0;-1,1,0;0,0,1],			 %  消去c(2,1)的消元矩阵
E2=[1,0,0;0,1,0;-2/3,0,1], 		 %  消去c(3,1)的消元矩阵
E3=[1,0,0;0,1,0;0,-2/3,1],		% 消去c(3,2)的消元矩阵
U=E3*E2*E1*C				% 经过消掉三个元后的上三角矩阵U
L=inv(E3*E2*E1), 			% 消元矩阵连乘积的逆矩阵L
disp('下面是执行lu分解命令[L1,U1]=lu(C)的结果'),pause
[L1,U1]=lu(C)					% 用lu命令检验A=L*U
