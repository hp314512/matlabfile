% ��ʵ�ô������Դ�����MATLAB�棩����������6.12����pla612
%  ����ϵͳ�ṹͼ�Ļ���
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
clear,close all
syms G1 G2 G3 G4 u1 u2                      % �涨���ű���
Q(1, 4)=-G3; Q(2, 1)=G1;     	% ��Q��ֵ����һ������Ҷ˱����Ƿ��ű��� 
Q(3, 2)=G2; Q(4, 3)=1;Q(5, 3)=1;Q(5, 5)=0;
P(2, 1)=G4;P(1, 1)=1;P(4, 2)=1; % ��P��ֵ����һ������Ҷ�Ҳ�����Ƿ��ű���
P(5, 1)=-1; P(5, 2)=0;                      % ��P��ֵ
W=inv(eye(5)-Q)*P;                          % �ź���ͼ���̽�
pretty(W)                                   % ������ʾ���ݺ�������
X=W*[u1;u2]                                 % �������
pretty(X(3))                                % ������ʾX(3)