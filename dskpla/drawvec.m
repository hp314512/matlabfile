function [ handle ] = drawvec(v,color,s);
%
% DRAWVEC(v,color,s) �õڶ�����Ԫ�涨����ɫ��������v��
% ���û�еڶ�����Ԫ����Ĭ�Ϻ�ɫ�����������Ϊԭ�㣬
% �������յ㴦����һ����ͷ��
% ������ķ�Χ��[-s,s,-s,s].
% �����������Ԫδ���涨����Ĭ��ֵΪ5��
%
% 
if nargin==1
   color = 'r';
end
if nargin < 3
   s=5;
end
handle = plot([0,v(1)],[0,v(2)],color);
axis([-s,s,-s,s])
axis('square')
hold on
[m,n]=size(v);
if n==1  % Change to row vector
   v=v'; 
end
atip=tip(v,s);
fill(atip(1,:),atip(2,:),color)
hold off
