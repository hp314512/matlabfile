% 《实用大众线性代数（MATLAB版）》例题4.05程序pla405
%  四维向量夹角的计算和绘制
%  陈怀琛编著，西安电子科技大学出版社，2014年7月
%
v1=[7;-4;-2;9]; v2=[-4;5;-1;-7]; v3=[9;4;4;-7];        % 输入参数
v10=v1/norm(v1), v20=v2/norm(v2), v30=v3/norm(v3)      % 求各v的单位向量v0
theta12=acos((v1'*v2)/(norm(v1)*norm(v2)))             % 求v1,v2的夹角
theta13=acos(v20'*v30), theta23= acos(v30'*v10)        % 求各v1,v3及v2,v3的夹角
[s12,t12]=plotangle(v1,v2),pause                       % 画v1,v2的夹角（plotangle是本书的专用子程序）
[s13,t13]=plotangle(v1,v3),pause                       % 画v1,v3的夹角
[s23,t23]=plotangle(v2,v3)                             % 画v3,v2的夹角
