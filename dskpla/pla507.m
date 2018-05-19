% 《实用大众线性代数（MATLAB版）》图5.07程序pla507
%  三阶方阵高次幂计算
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
A=[4,0,0;0,3,1;0,1,3],      % 输入原始方阵
[p,lambda]=eig(A)           % 求特征值和特征向量
Ak=p*lambda^10*inv(p)       % 将特征值10次乘幂作正反线性变换
