%《实用大众线性代数》作图方法演示程序ex25p
% 西安电子科技大学出版社出版  陈怀琛编著 2014年8月
format compact, clear ,
close all,echo on
Y=[-1.4,-2.2,0.9,0.9,2,-0.6,0.1,1.7,-2.3,-2.2],disp(' ')
pause,plot(Y,'b','linewidth',2)
pause, title('我的第一张图'), xlabel('n'), ylabel('Y'),grid
pause,disp('用hold on命令在一张图上画两根曲线的方法'),disp(' ')
pause, t=0:0.5:4*pi; y=exp(-0.1*t).*sin(t); plot(t,y,'g'),hold on
pause, t=0:0.5:4*pi; y1=exp(-0.1*t).*sin(t+1); plot(t,y1,'r','linewidth',2)
hold off
pause,disp('将平面上若干点(1,2),(3,4),(4,1),(1,2)连接的方法'),
pause,plot([1,3,4,1],[2,4,1,2])
pause,plot([1,3,4,1],[2,4,1,2],'s')
pause,disp('分割成子图的方法'),disp(' ')
pause,subplot(2,2,1),stem(t,y), title('plot(t,y)')
pause,subplot(2,2,2),stairs(t,y),title('stairs(t,y)')
pause,subplot(2,2,3),bar(t,y),title('bar(t,y)'),axis([0,20,-1,1]) 
pause,subplot(2,2,4),fill(t,y,'r'),title('fill(t,y,''r'')'),
pause,subplot(1,1,1)
disp('空间曲面的绘制'),disp(' ')
disp('先用meshgrid生成自变量网格坐标矩阵'),disp(' ')
x=[-1:0.5:1]; y=[-1:0.5:1]; 
[X,Y]=meshgrid(x,y),plot(X,Y,'*')	
disp('按方程求出因变量Z矩阵数据'),disp(' ')
pause,Z=2*X+3*Y+2;   
disp('用mesh命令绘制曲面'),disp(' ')
pause,mesh(X,Y,Z),pause	
disp('用mesh命令绘制第二个曲面'),disp(' ')
pause,hold on, Z1=X-2*Y; mesh(X,Y,Z1),hold off
disp('根据给出的曲线方程快速绘图'),disp(' ')
pause,ezplot('x+2*y=3',[-3,3,-3,3]),grid on
disp('根据给出的曲面方程快速绘图'),disp(' ')
pause,ezmesh('3*x1+2*x2+3',[-3,3,-3,3])
pause, hold on
pause,ezmesh('x1-2*x2+1',[-3,3,-3,3])
echo off

