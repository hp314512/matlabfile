% ��ʵ�ô������Դ�����MATLAB�棩������2.10����pla210
%  �Ľ׳��Ⱦ������������ 
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
syms e k, 				% ��e��k��Ϊ���ű���
format compact,format rat
E42=[1,0,0,0;0,1,0,0;0,0,1,0;0,e,0,1], 	% ֱ���������E
P13=eye(4); P13([1,3],:)=P13([3,1],:)        % ����λ����1,3���жԵ�����P
D4=diag([1,1,1,k])                       % D(4,4)=k�ĶԽǾ�������
% �������뵥λ�������Ͼ������������ 
UE42=rref([E42,eye(4)]),UP13=rref([P13,eye(4)]),UD4=rref([D4,eye(4)])	
% ȡ��U�ĺ�����U(:,[5:8])�ӿ飬�������������
VE42=UE42(:,[5:8]), VP13=UP13(:,[5:8]), VD4=UD4(:,[5:8])
