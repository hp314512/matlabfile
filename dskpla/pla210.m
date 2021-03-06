% 《实用大众线性代数（MATLAB版）》例题2.10程序pla210
%  四阶初等矩阵的逆矩阵计算 
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
syms e k, 				% 将e及k设为符号变量
format compact,format rat
E42=[1,0,0,0;0,1,0,0;0,0,1,0;0,e,0,1], 	% 直接输入矩阵E
P13=eye(4); P13([1,3],:)=P13([3,1],:)        % 将单位矩阵1,3两行对调生成P
D4=diag([1,1,1,k])                       % D(4,4)=k的对角矩阵生成
% 对它们与单位矩阵的组合矩阵求行最简形 
UE42=rref([E42,eye(4)]),UP13=rref([P13,eye(4)]),UD4=rref([D4,eye(4)])	
% 取出U的后四列U(:,[5:8])子块，就是所求的逆阵。
VE42=UE42(:,[5:8]), VP13=UP13(:,[5:8]), VD4=UD4(:,[5:8])

