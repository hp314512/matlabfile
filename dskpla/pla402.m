% 《实用大众线性代数（MATLAB版）》例题4.02程序pla402
%  空间向量及其线性组合的绘制
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear,close all
u=[1;-1;2],v=[2;1;-1],                                 % u,v向量赋值
w1=u+v,w2=u-v,                                         % w1=u+v,w2=u-v向量计算
plot3([0,u(1)],[0,u(2)],[0,u(3)],'r'),hold on          % 绘制u向量
plot3([0,v(1)],[0,v(2)],[0,v(3)],'g'),hold on          % 绘制v向量
plot3([0,u(1)+v(1)],[0,u(2)+v(2)],[0,u(3)+v(3)],'b'),hold on  % 绘制u+v向量
plot3([u(1),v(1)],[u(2),v(2)],[u(3),v(3)],'m'),hold on        % 绘制u-v向量
grid on
axis equal
