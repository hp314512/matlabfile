% ��ʵ�ô������Դ�����MATLAB�棩��ͼ5.01����pla501
%  ��ά���Ա任�ļ�������
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
clear,close all
x=[0,1,1,0;0,0,1,1];                        % �趨��ά����ͼ����������
subplot(2,3,1),                             % ��һ��ͼ
fill([x(1,:),0],[x(2,:),0],'r')             % ���Ϊ��ɫ
hold on,plot([0,1],[0,1],'k','LineWidth',2);% ����������������
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(a) x=[0,1,1,0;0,0,1,1]')
A1=[-1,0;0,1]                               % ��һ�����Ա任����A1
y1=A1*x                                     % �任������ݾ���
subplot(2,3,2),                             % �ڶ���ͼ
fill([y1(1,:),0],[y1(2,:),0],'g')            % ���Ϊ��ɫ
hold on,plot([0,1],[0,1],'k','LineWidth',2);% ����������������
hold on,drawvec(A1(:,1));hold on,drawvec(A1(:,2));
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(b)A1=[-1,0;0,1]')                 % ����
A2=[1.5,0;0,1]                            % �ڶ������Ա任����A2
y2=A2*x                                 % �任������ݾ���
subplot(2,3,3),                            % ������ͼ
fill([y2(1,:),0],[y2(2,:),0],'g')            % ���Ϊ��ɫ
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A2(:,1));hold on,drawvec(A2(:,2));% ����������������
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(c)A2=[1.5,0;0,1]')                  % ����
A3=[1,0;0,0.5]                            % ���������Ա任����A3
y3=A3*x                                     % �任������ݾ���
subplot(2,3,4),                            % ���ķ�ͼ
fill([y3(1,:),0],[y3(2,:),0],'g')            % ���Ϊ��ɫ
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A3(:,1));hold on,drawvec(A3(:,2));% ����������������
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(d)A3=[1,0;0,0.5]')                  % ����
A4=[1,0.5;0,1]                            % ���ĸ����Ա任����A4
y4=A4*x                                     % �任������ݾ���
subplot(2,3,5),                            % �����ͼ
fill([y4(1,:),0],[y4(2,:),0],'g')            % ���Ϊ��ɫ
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A4(:,1));hold on,drawvec(A4(:,2));% ����������������
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(e)A4=[1,0.5;0,1]')                  % ����
t=pi/6,
A5=[cos(t),-sin(t);sin(t),cos(t)]          % ��������Ա任����A5
y5=A5*x                                     % �任������ݾ���
subplot(2,3,6),                            % ������ͼ
fill([y5(1,:),0],[y5(2,:),0],'g')            % ���Ϊ��ɫ
hold on,plot([0,1],[0,1],'k','LineWidth',2);
hold on,drawvec(A5(:,1));hold on,drawvec(A5(:,2));% ����������������
axis equal,axis([-1.5,1.5,-1,2]),grid on
title('(f)A5=[0.866,-0.5;0.5,0.866]')       % ����
set(gcf,'color','w')                        % ���ñ���ɫΪ��
