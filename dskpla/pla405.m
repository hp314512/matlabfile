% ��ʵ�ô������Դ�����MATLAB�棩������4.05����pla405
%  ��ά�����нǵļ���ͻ���
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
v1=[7;-4;-2;9]; v2=[-4;5;-1;-7]; v3=[9;4;4;-7];        % �������
v10=v1/norm(v1), v20=v2/norm(v2), v30=v3/norm(v3)      % ���v�ĵ�λ����v0
theta12=acos((v1'*v2)/(norm(v1)*norm(v2)))             % ��v1,v2�ļн�
theta13=acos(v20'*v30), theta23= acos(v30'*v10)        % ���v1,v3��v2,v3�ļн�
[s12,t12]=plotangle(v1,v2),pause                       % ��v1,v2�ļнǣ�plotangle�Ǳ����ר���ӳ���
[s13,t13]=plotangle(v1,v3),pause                       % ��v1,v3�ļн�
[s23,t23]=plotangle(v2,v3)                             % ��v3,v2�ļн�
