% 《实用大众线性代数（MATLAB版）》例题2.18程序pla218
%  航路矩阵的计算
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear, close all
A1=[0,0,1,1;1,0,0,0;0,1,0,0;1,0,1,0]    % 给邻接矩阵赋值
A2=A1*A1                                % 邻接矩阵平方
A3=A1^3,                                % 邻接矩阵三次方
A=A1+A1^2+A1^3                          % 转机两次的到达矩阵