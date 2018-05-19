% 《实用大众线性代数（MATLAB版）》图4.09程序pla409
%  超定方程组1.2(d)的解及图
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear, close all
A=[1,1;1,-1;-1,2],b=[-1;3;-3]    % 原始数据输入
xhat1=pinv(A)*b                  % 代入三种最小二乘解的公式，求三个近似解
xhat2=inv(A'*A)*A'*b
xhat3=A\b
norme=norm(A*xhat1-b)            % 最小二乘误差的均方值
ezplot('x+y+1')                  % 绘制三个方程代表的三根直线图
hold on, grid on
ezplot('x-y-3'),hold  on
%plot(1.85,-0.71,'*')
set(gcf,'color','w')
ezplot('-x+2*y+3'),hold on
plot(xhat1(1),xhat1(2),'*')     % 绘制最小二乘解的对应点