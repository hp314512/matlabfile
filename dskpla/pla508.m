% ��ʵ�ô������Դ�����MATLAB�棩��ͼ5.08����pla508
%  ���׷���ָ���ļ���
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
A=[-2,-6;1,3];       % ����ԭʼ����
[P,L]=eig(A),        % ������ֵ��������������
V=inv(P)             % �����������������
% ����ֵ��ָ�����������任��ԭָ������
expA=P*[exp(L(1,1)),0;0,exp(L(2,2))]*inv(P)
disp('��MATLAB�е�expm(A)����У��'),pause
expm(A)