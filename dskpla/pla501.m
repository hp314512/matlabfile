% 《实用大众线性代数（MATLAB版）》图5.01程序pla501
%  两维线性变换的几何形象
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear,close all
x=[0,1,1,0;0,0,1,1];                        % 设定二维方形图形向量矩阵
subplot(2,3,1),                             % 第一分图
fill([x(1,:),0],[x(2,:),0],'r')             % 填充为红色
hold on,plot([0,1],[0,1],'k','LineWidth',2);% 画出其两个基向量
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(a) x=[0,1,1,0;0,0,1,1]')
A1=[-1,0;0,1]                               % 第一个线性变换矩阵A1
y1=A1*x                                     % 变换后的数据矩阵
subplot(2,3,2),                             % 第二分图
fill([y1(1,:),0],[y1(2,:),0],'g')            % 填充为绿色
hold on,plot([0,1],[0,1],'k','LineWidth',2);% 画出其两个基向量
hold on,drawvec(A1(:,1));hold on,drawvec(A1(:,2));
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(b)A1=[-1,0;0,1]')                 % 标题
A2=[1.5,0;0,1]                            % 第二个线性变换矩阵A2
y2=A2*x                                 % 变换后的数据矩阵
subplot(2,3,3),                            % 第三分图
fill([y2(1,:),0],[y2(2,:),0],'g')            % 填充为绿色
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A2(:,1));hold on,drawvec(A2(:,2));% 画出其两个基向量
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(c)A2=[1.5,0;0,1]')                  % 标题
A3=[1,0;0,0.5]                            % 第三个线性变换矩阵A3
y3=A3*x                                     % 变换后的数据矩阵
subplot(2,3,4),                            % 第四分图
fill([y3(1,:),0],[y3(2,:),0],'g')            % 填充为绿色
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A3(:,1));hold on,drawvec(A3(:,2));% 画出其两个基向量
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(d)A3=[1,0;0,0.5]')                  % 标题
A4=[1,0.5;0,1]                            % 第四个线性变换矩阵A4
y4=A4*x                                     % 变换后的数据矩阵
subplot(2,3,5),                            % 第五分图
fill([y4(1,:),0],[y4(2,:),0],'g')            % 填充为绿色
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A4(:,1));hold on,drawvec(A4(:,2));% 画出其两个基向量
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(e)A4=[1,0.5;0,1]')                  % 标题
t=pi/6,
A5=[cos(t),-sin(t);sin(t),cos(t)]          % 第五个线性变换矩阵A5
y5=A5*x                                     % 变换后的数据矩阵
subplot(2,3,6),                            % 第六分图
fill([y5(1,:),0],[y5(2,:),0],'g')            % 填充为绿色
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A5(:,1));hold on,drawvec(A5(:,2));% 画出其两个基向量
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(f)A5=[0.866,-0.5;0.5,0.866]')       % 标题
set(gcf,'color','w')                        % 设置背景色为白
