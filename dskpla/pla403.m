% 《实用大众线性代数（MATLAB版）》例题4.03程序pla403
%  平面向量及其线性组合的绘制
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
u=[4;2],v=[-1.5;3],x0=[1;0]             % u,v赋值，x0为横坐标单位向量
u0=u/norm(u), v0=v/norm(v)              % 求u,v的单位向量u0,v0
thetau=acos(u0'*x0),thetav=acos(v0'*x0) % 求单位向量u0,v0与x0的夹角
thetauv=acos(u0'*v0)                    % 求单位向量u0和v0的夹角
plotangle(u,v);                         % 画u,v的夹角（此为本书专用绘图子程序）
grid on
set(gcf,'color','w')                    % 将图的背景设成白色
axis([-2 5 -1 6])                       % 设定坐标范围