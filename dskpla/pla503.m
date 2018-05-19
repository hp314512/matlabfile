% 《实用大众线性代数（MATLAB版）》例5.3程序pla503
%  三角形的平移和转动
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear,close all
x=[-1,1,0,-1;1,1,2,1;ones(1,4)]   % 将平面坐标改为三维齐次坐标
M=[1,0,4;0,1,3;0,0,1],          % 齐次坐标系中的移位矩阵
plot(x(1,:),x(2,:)),hold on		% 画出原始图形
axis([-2,4,0,6]),grid on,pause
t=pi/2;
R=[cos(t),-sin(t),0;sin(t),cos(t),0;0,0,1] 	% 齐次坐标系转动矩阵
y1=R*x,pause						% 求出转动后图形参数
fill(y1(1,:),y1(2,:),'r')		% 画填充红色图
y2=M*R*x,pause                  % 求出两次变换后图形参数
fill(y2(1,:),y2(2,:),'g')		% 画填充绿色图
axis([-3,3,-1,5])
set(gcf,'color','w')            % 设置图形背景色为白