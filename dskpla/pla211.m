% 《实用大众线性代数（MATLAB版）》例题2.11程序pla211
%  逆矩阵计算及矩阵可逆性检验 
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
A=[1,3,-2;-3,-6,5;1,1,-1], 	% 给方阵A赋值
C=[A,eye(3)],               % 与单位矩阵并列为增广矩阵C
Uc=rref(C)                  % 求行最简形Uc
VA=Uc(:,4:6)                % A的逆矩阵为Uc的末三列
B=[3,6,2;2,4,1;1,2,1],  	% 给方阵B赋值
D=[B,eye(3)],               % 与单位矩阵并列为增广矩阵D
Ud=rref(D)                  % 求行最简形Ud
VB=Ud(:,4:6)                % B的逆矩阵为Ud的末三列
