% 《实用大众线性代数（MATLAB版）》例5.6.5程序pla565
%  单自由度振动问题
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
clear,close all
A=[0,1;-4,-0.1], X0=[1;0]               % 输入原始方阵及初始条件
for k=0:1000  t(k+1)=0.1*k;
    X(:,k+1)=X0'*expm(A*t(k+1));        % 对时间增量用函数expm(A*t)循环计算
end
plot(t,X(1,:))                          % 绘图
set(gcf,'color','w'),pause,             % 设定背景色为白
[P,L]=eig(A)                            % 求特征值和特征向量
for k=0:1000  t(k+1)=0.1*k;
    % 用特征值方法对时间增量循环计算
    X1(:,k+1)=X0'*P*[exp(L(1,1)*t(k+1)),0;0,exp(L(2,2)*t(k+1))]*inv(P);
end
E=X-X1; norm(E)                         % 求两个算法间的误差
figure(2),plot(t,real(X1(2,:)))         % 绘制曲线