%《MATLAB及其在理工课程中的应用指南》第二章第一节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月

format,echo on
pause,x1=sqrt(5),x2=1.37
pause,y=3/x2
pause,disp(' 矩阵的赋值')
pause,a=[1,2,3;4,5,6;7,8,9]
pause,disp(' 赋值元素可以是表达式')
pause,x=[-1.3 sqrt(3) (1+2+3)/5*4]
pause,disp(' 可以超越矩阵已有范围赋值')
pause,disp(' 其中未赋值元素自动取零')
pause,x(5)=abs(x(1))
pause,a(4,3)=6.5
pause,a(5,:)=[5,4,3]
pause,disp(' 在矩阵中提取元素或元素群')
pause,b=a([2,4],[1,3])
pause,disp(' 用空矩阵[]在矩阵中删除行或列')
pause,a([2,4,5],:)=[]
pause,disp(' 赋值语句可以无左端变量')
pause,a/7
pause,disp(' 矩阵的转置')
pause,a'
pause,disp(' 矩阵元素可以是复数')
pause,c=3+5.2i
pause,z=[1+2i,3+4i;5+6i,7+8i]
pause,z=[1,3;5,7]+[2,4;6,8]*i
pause,disp(' 运算对复数有效')
pause,f=sqrt(1+2i)
pause,g=sin(3+5i)
pause,f*f
pause,disp(' MATLAB内置的基本赋值矩阵')
format compact
pause,f1=ones(3,2),f2=zeros(2,3)
pause,f3=magic(3),f4=eye(2)
pause,f5=linspace(0,1,5)
pause,fb1=[f1,f3;f4,f2]
pause,fb2=[fb1;f5]
pause,f=[0.000073 5.33e-6]
pause,disp(' 变量的检查')
pause,who
pause,whos
pause,disp(' 几个不显示的变量')
pause,i,j
pause,pi,realmax,realmin
pause, 1/0,0/0,0*Inf
echo off
