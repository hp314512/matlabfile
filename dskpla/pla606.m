% 《实用大众线性代数（MATLAB版）》第六章例6.06程序pla606
%  三阶数字滤波器系统函数
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear
syms q					% 设定符号变量
Q(1,2)=q; Q(2,3)=3/8*q-1/4; Q(3,1)=1; 		%给非零元素赋值
Q(3,3)=0; 			% 给右下角元素Q（3,3）赋值，使矩阵中未赋值元素都自动置零
P=[2;1/4;0]				% 给P赋值
W=inv(eye(3)-Q)*P		% 用信号流图求传递函数的公式
W3=simple(W(3))         % 对W(3)进行整理
pretty(W3)              % 用易读的形式进行显示

