% ��ʵ�ô������Դ�����MATLAB�棩����567����pla567
%  ����ͼ�ε��˶�����
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
clear,close all
G0=[-1,1,0,-1;1,1,2,1;ones(1,4)]   % ��ƽ�������Ϊ��ά�������
plot(G0(1,:),G0(2,:))		% ����ԭʼͼ��
axis([-2,4,-2,6]),
hold on,grid on,pause
Gf =[2,2,1,2;3,5,4,3;ones(1,4)]
K0=Gf/G0
% Gf=K0*G0 		% ������α任��ͼ�β���
fill(Gf(1,:),Gf(2,:),'g'),pause	% �������ɫͼ
axis equal
R=[0,-1,0;1,0,0;0,0,1],Gr=R*G0
fill(Gr(1,:),Gr(2,:),'r')
set(gcf,'color','w'),pause	% ת��������ɫͼ
% ����������(b)�Ľ�
N=input('��N�ݣ�����N= ')
if isempty(N), N=8, end
K=(K0)^(1/N);
for i=1:N-1
    ys=K^i*G0;pause(2/N);		% ���ת����ͼ�β���
    fill(ys(1,:),ys(2,:),'r');shg		% ������ɫͼ
end
hold off
