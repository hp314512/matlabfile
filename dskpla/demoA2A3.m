% ��ʵ�ô������Դ�����MATLAB�棩����¼����2-3����ʾ����demoA2~A3
% ����ĸ�ֵ
% �»�衱���,�廪��ѧ������,2014��7��
%
echo on,format compact
disp('��¼��MATLAB��顱����ĸ�ֵA2~A3��ʾ����')
a=[1  2  3;4  5  6;7  8  9],pause
x=[-1.3,sqrt(3),(1+2+3)/5*4],pause
x(5)=abs(x(1)),pause
a(4,3)=6.5,pause 
a(5,:)=[5,4,3],pause
b =	a([2,4],[1,3]),pause
a([2,4,5],:)=[ ],pause
a',pause
f1=ones(3,2),pause
f2=zeros(2,3),pause
f3=magic(3),pause
f4=eye(2),pause
fb1=[f1,f3;f4,f2],pause
who,pause
whos,pause
0/0,pause
1/0,pause
0*Inf,pause
[m,n]=size(fb1),pause
X=[-1 0 1],pause  
Y=X-1,pause
pi*X,pause
X*Y',pause
X'*Y,pause
A = [6,3,4;-2,5,7;8,-4,-3],pause
B = [3;-4;-7],pause
x = A\B,pause
V=inv(A),pause
A*V,pause
V*A,pause

