%��MATLAB���������γ��е�Ӧ��ָ�ϡ��ڶ��µ�һ����ʾ����
% �������ӿƼ���ѧ���������  �»�衱��� 1999��10��

format,echo on
pause,x1=sqrt(5),x2=1.37
pause,y=3/x2
pause,disp(' ����ĸ�ֵ')
pause,a=[1,2,3;4,5,6;7,8,9]
pause,disp(' ��ֵԪ�ؿ����Ǳ��ʽ')
pause,x=[-1.3 sqrt(3) (1+2+3)/5*4]
pause,disp(' ���Գ�Խ�������з�Χ��ֵ')
pause,disp(' ����δ��ֵԪ���Զ�ȡ��')
pause,x(5)=abs(x(1))
pause,a(4,3)=6.5
pause,a(5,:)=[5,4,3]
pause,disp(' �ھ�������ȡԪ�ػ�Ԫ��Ⱥ')
pause,b=a([2,4],[1,3])
pause,disp(' �ÿվ���[]�ھ�����ɾ���л���')
pause,a([2,4,5],:)=[]
pause,disp(' ��ֵ����������˱���')
pause,a/7
pause,disp(' �����ת��')
pause,a'
pause,disp(' ����Ԫ�ؿ����Ǹ���')
pause,c=3+5.2i
pause,z=[1+2i,3+4i;5+6i,7+8i]
pause,z=[1,3;5,7]+[2,4;6,8]*i
pause,disp(' ����Ը�����Ч')
pause,f=sqrt(1+2i)
pause,g=sin(3+5i)
pause,f*f
pause,disp(' MATLAB���õĻ�����ֵ����')
format compact
pause,f1=ones(3,2),f2=zeros(2,3)
pause,f3=magic(3),f4=eye(2)
pause,f5=linspace(0,1,5)
pause,fb1=[f1,f3;f4,f2]
pause,fb2=[fb1;f5]
pause,f=[0.000073 5.33e-6]
pause,disp(' �����ļ��')
pause,who
pause,whos
pause,disp(' ��������ʾ�ı���')
pause,i,j
pause,pi,realmax,realmin
pause, 1/0,0/0,0*Inf
echo off
