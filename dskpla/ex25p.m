%��ʵ�ô������Դ�������ͼ������ʾ����ex25p
% �������ӿƼ���ѧ���������  �»�衱��� 2014��8��
format compact, clear ,
close all,echo on
Y=[-1.4,-2.2,0.9,0.9,2,-0.6,0.1,1.7,-2.3,-2.2],disp(' ')
pause,plot(Y,'b','linewidth',2)
pause, title('�ҵĵ�һ��ͼ'), xlabel('n'), ylabel('Y'),grid
pause,disp('��hold on������һ��ͼ�ϻ��������ߵķ���'),disp(' ')
pause, t=0:0.5:4*pi; y=exp(-0.1*t).*sin(t); plot(t,y,'g'),hold on
pause, t=0:0.5:4*pi; y1=exp(-0.1*t).*sin(t+1); plot(t,y1,'r','linewidth',2)
hold off
pause,disp('��ƽ�������ɵ�(1,2),(3,4),(4,1),(1,2)���ӵķ���'),
pause,plot([1,3,4,1],[2,4,1,2])
pause,plot([1,3,4,1],[2,4,1,2],'s')
pause,disp('�ָ����ͼ�ķ���'),disp(' ')
pause,subplot(2,2,1),stem(t,y), title('plot(t,y)')
pause,subplot(2,2,2),stairs(t,y),title('stairs(t,y)')
pause,subplot(2,2,3),bar(t,y),title('bar(t,y)'),axis([0,20,-1,1]) 
pause,subplot(2,2,4),fill(t,y,'r'),title('fill(t,y,''r'')'),
pause,subplot(1,1,1)
disp('�ռ�����Ļ���'),disp(' ')
disp('����meshgrid�����Ա��������������'),disp(' ')
x=[-1:0.5:1]; y=[-1:0.5:1]; 
[X,Y]=meshgrid(x,y),plot(X,Y,'*')	
disp('��������������Z��������'),disp(' ')
pause,Z=2*X+3*Y+2;   
disp('��mesh�����������'),disp(' ')
pause,mesh(X,Y,Z),pause	
disp('��mesh������Ƶڶ�������'),disp(' ')
pause,hold on, Z1=X-2*Y; mesh(X,Y,Z1),hold off
disp('���ݸ��������߷��̿��ٻ�ͼ'),disp(' ')
pause,ezplot('x+2*y=3',[-3,3,-3,3]),grid on
disp('���ݸ��������淽�̿��ٻ�ͼ'),disp(' ')
pause,ezmesh('3*x1+2*x2+3',[-3,3,-3,3])
pause, hold on
pause,ezmesh('x1-2*x2+1',[-3,3,-3,3])
echo off

