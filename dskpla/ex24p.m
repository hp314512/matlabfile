%《MATLAB及其在理工课程中的应用指南》第二章第四节演示程序
% 西安电子科技大学出版社出版  陈怀琛编著 1999年10月

clear, format,echo off
disp('两个数之间的六种关系'),disp(' ')
disp('  <   小于 '),disp(' ')
disp('  <=   小于等于 '),disp(' ')
disp('  >   大于 '),disp(' ')
disp('  >=   大于等于 '),disp(' ')
disp('  ==   等于 '),disp(' ')
disp('  ~=   不等于 '),disp(' ')
pause,echo on
pause, 2+2==4
pause, A=magic(6)
pause, p=(rem(A,3)==0),
pause,echo off
disp('  &     与'),disp(' ')
disp('  |     或'),disp(' ')
disp('  ~     非'),disp(' ')
disp('   all    全为真 '),disp(' ')
disp('   any    不全为假 '),disp(' ')
pause,echo on
u=p|~p
pause, all(p),all(u)
pause, v=p&(~p)
pause, any(p),any(v)
pause,disp('  求最大数')
pause, x=1;while x~=inf,x1=x;x=2*x;end,x1
pause, y=1;while y~=0,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause,realmax,eps
pause,disp('  求相对精度eps')
pause, y=1;while 1+y>1,y1=y;y=y/2;end,y1
pause, format long, y1, format short
pause, y=1;while y*eps~=0,y3=y;y=y/2;end,y3
pause, format long, y3, format short
pause,disp('  求hilbert矩阵')
pause, n=input('n='),h=zeros(n,n);format rat,for i=1:n,for j=1:n,h(i,j)=1/(i+j-1);end,end,h
pause, n=input('n='),format rat,for i=1:n,h1(i,:)=1./(i+[1:n]-1);end,h1,format short

