% 《实用大众线性代数（MATLAB版）》例6.13程序pla613
%  机械臂速度变换及雅克比矩阵
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear,close all
syms l1 l2 t1 t2
A=[-l1*sin(t1)-l2*sin(t1+t2),-l2*sin(t1+t2);l1*cos(t1)+l2*cos(t1+t2),l2*cos(t1+t2)]
V=inv(A)

