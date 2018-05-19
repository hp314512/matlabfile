function [U,L] = rrefdemon(A)
%
% rrefdemo�����ø�˹��Ԫ�������󻯼�Ϊ�����Ǽ��ԽǾ���
% �����в�������Ԫ���н������н��� 
% [U, L] = rrefdemo(A) �ø�˹��Ԫ���ҵ�һ�������ǵ�λ
% ���� L ��һ�������Ǿ��� U ��ʹ L*U = A.
% ���������̫С����Ԫ�������㽫���ж�.
% ���Է�������Ԫȫ������ʾ
% �����ԪCΪm��n���������Ҫ��n��m+1
% ���Ϊ������Ľ�d�ĵ��о���
%
% �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
[m, n] = size(A);
p=input('Ҫ�ֲ�ִ�У���y�����������  ','s' );
for k = 1:m
%   if abs(A(k, k)) < sqrt(eps)
%      disp(['�ڵ� ' int2str(k) '���г��ֵ���Ԫ̫С.'])
%   end
   L(k, k) = 1;
   for i = k+1:m
      L(i,k) = A(i, k) / A(k, k);
      fprintf('����%d�г���%4.4f/%4.4f=%4.4f,�ӵ�%d���м�ȥ\n',k,A(i,k),A(k,k),L(i,k),i)
%      for j = 1:k-1
%         A(i, j) = A(i, j) - L(i, k)*A(k, j)
%      end
      for j = 1:n
         A(i, j) = A(i, j) - L(i, k)*A(k, j);
      end,A,
      if p=='y' pause,else,end
   end
   for j = k:n
      U(k, j) = A(k, j);
   end
end
disp('��Ԫ�����еĳ�����������ǵ�λ����L�����һ�±�Ϊ��׼�б�ţ��ڶ��±�Ϊ���任�б��')
%L,U,L*U,inv(L),inv(L)*A
disp('��Ԫ������ԭ�����Ϊ�����Ǿ���U�������Խ�������Ԫ�����˻�Ϊϵ�����������ʽD=prod(diag(U))')
D=prod(diag(U))
% �ش�����
disp('���½��лش����̣���ϵ������Խ�����Ԫ�Ϸ���Ԫ����Ϊ�㣬ʹϵ������Խǻ�')
for k = m:-1:1
    for i = 1:k-1
      Lh(i,k) = A(i, k) / A(k, k);
      fprintf('����%d�г���%4.4f/%4.4f=%4.4f,�ӵ�%d���м�ȥ\n',k,A(i,k),A(k,k),L(i,k),i)
      for j = 1:n
         A(i, j) = A(i, j) - Lh(i, k)*A(k, j);
      end,A,
      if p=='y' pause,else,end
    end
   for j = k:n
      Uh(k, j) = A(k, j);
   end
end

for k = 1:n-m
    x(k,m) = A(m,m+k)/A(m,m);
end
for k = 1:n-m
    for i = m-1:-1:1
        sum(k) = 0;
        for j = i+1:m
            sum(k) = sum(k) + A(i,j)*x(k,j);
        end
        x(k,i) = A(i,m+k) - sum(k);
        if (A(i,i) == 0)    % �������ϵ���Ƿ�����.
            disp('����ϵ������');
            disp(A);
            break;
        end
        x(k,i) = x(k,i)/A(i,i);
    end
end

% ��ʾ���ɵĶԽ���ʽ.
disp('������󻯳ɵĶԽ���ʽ:');
disp(A);
disp('�����������г��Ը�����Ԫ���õ��������Ϊ:');
disp(A./(diag(A)*ones(1,n)))
disp('��ǰ�����·��̵Ľ�Ϊ:');
disp(A(:,n)./diag(A))
