% 《实用大众线性代数（MATLAB版）》例题1.10程序pla110
%  交通流量的分析 
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
A=[1,-1,0,0;0,1,-1,0;0,0,1,-1;-1,0,0,1]
b=[160;-40;210;-330]                    % 给A,b赋值
U0=rref([A,b])                          % 行最简形变换


