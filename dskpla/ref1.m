
% ��ʵ�ô������Դ�����MATLAB�棩����һ�»�Ϊ�������н�����ʽ�ӳ���ref1
% 
function [A,jb] = ref1(A,tol)
%REF1   ��������ͨ�н�����ʽ
%   R = RREF(A)  ����A����ͨ�н�����ʽ.
%
%   [R,jb] = REF1(A) ͬʱ�������� jb:
%       r = length(jb) ��A���ȡ�
%       x(jb) Ϊ����ϵͳAx = b��Լ������, ,
%       A(:,jb) ��A�ռ��е�һ���,
%       R(1:r,jb) �������Ǿ���.
%
%   [R,jb] = REF1(A,TOL) ���������ݲ��ж���.
%
%   ����������ʹ�˳�������������� RANK, ORTH and NULL�Ⱥ�������Ĳ�ͬ.
%
%   ���� RREFMOVIE, RANK, ORTH, NULL, QR, SVD. RREF

%   CBM, 11/24/85, 1/29/90, 7/12/92.
%   Copyright 1984-2001 The MathWorks, Inc. 
%   $ 5/19/2006 �»���޸�

[m,n] = size(A);

% Does it appear that elements of A are ratios of small integers?
[num, den] = rat(A);
rats = isequal(A,num./den);

% Compute the default tolerance if none was provided.
if (nargin < 2), tol = max(m,n)*eps*norm(A,'inf'); end

% Loop over the entire matrix.
i = 1;
j = 1;
jb = [];
while (i <= m) & (j <= n)
   % Find value and index of largest element in the remainder of column j.
   [p,k] = max(abs(A(i:m,j))); k = k+i-1;
   if (p <= tol)
      % The column is negligible, zero it out.
      A(i:m,j) = zeros(m-i+1,1);
      j = j + 1;
   else
      % Remember column index
      jb = [jb j];
      % Swap i-th and k-th rows.
      A([i k],j:n) = A([k i],j:n);
      % Divide the pivot row by the pivot element.
      %% A(i,j:n) = A(i,j:n)/A(i,j);
      % Subtract multiples of the pivot row from all the other rows.
      for k = [i+1:m]
         A(k,j:n) = A(k,j:n) - A(k,j)*A(i,j:n)/A(i,j);
      end
      i = i + 1;
      j = j + 1;
   end
end

% Return "rational" numbers if appropriate.
if rats
    [num,den] = rat(A);
    A=num./den;
end
