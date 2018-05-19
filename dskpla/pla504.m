% 《实用大众线性代数（MATLAB版）》例5.4程序pla504
%  基向量改变对坐标值的影响示例
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear,close all
b=[1,1;0,2];        % 变换后基向量
e=[1,0;0,1];        % 原基向量
x=[1;6];            % 原坐标
d=e*inv(b)*x        % 变换后坐标