function [U,L]=rrefdemo1(C)
%
% rrefdemo1�����ø�˹��Ԫ�������󻯼�Ϊ�����Ǽ��ԽǾ���
% ������ֻ�����н����������Ԫ 
% [U, L] = rrefdemo1(A) �ø�˹��Ԫ���ҵ�һ�������ǵ�λ
% ���� L ��һ�������Ǿ��� U ��ʹ L*U = A.
% ���Է�������Ԫȫ������ʾ
% �����ԪCΪm��n���������Ҫ��n��m+1
% ���Ϊ������Ľ�d�ĵ��о���
%
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
disp('��˹��Ԫ�������Է�����')
A=C;tol = 1e-16;
disp(' ');
disp('���֣��У������������Ԫ��')
[m,n] = size(A);
g=input('Ҫ�ֲ�ִ�У���y�����������  ','s' );
disp(' ')
disp('��ʼ����')
disp(A)

if g=='y';  % ѡ����ʾȫ������.
    disp('[���س���������һ��]')
    disp(' ')
    pause
end
if g == 'n';
    disp(' **���ڼ���** ');
    disp(' ');
end
%Initialize vector to keep track of column swaps.
for i = 1:m
    col(i) = i;
end

% ������Ԫ����
for k=1:m L(k,k)=1; end
for k = 1:m-1
    max = 0;
    isav = k;
    jsav = k;
    for i = k:m  % Ѱ����Ԫ.
        for j=k
            mtest = A(i,j);
            if (abs(mtest)) > max
                max = abs(A(i,j));
                isav = i;
                jsav = j;
            end
        end
    end
    if( max < tol) % �����Ƿ�����Ԫ.
        disp('��������');
        disp(A);
        break;
    end
    if (isav ~= k)
        % �н���
        fprintf('�����н�����ʹ��%d����ԪA((%d,%d))�·�����ֵ���Ԫ��A(%d,%d)�Ƶ���Ԫ��λ��\n',k,k,k,isav,k)
        for j = 1:n
            temp = A(k,j);
            temp1 = A(isav,j);
            A(k,j) = temp1;
            A(isav,j) = temp;
        end
        if g=='y'  % ѡ����ʾȫ������.
            fprintf('����%d�����%d�н���\n',k,isav)
            disp(A);
            pause;
        end
    end
%    if (jsav ~= k)
%       fprintf('�����н�����ʹϵ���������·�%d��%d���о���ֵ���Ԫ�ش�����Ԫ(%d,%d)��λ��\n',m-k+1,m-k+1,k,k)
%        % �н���
%        tempcol = col(jsav);
%        col(jsav) = col(k);
%        col(k) = tempcol;
%        fprintf('����%d�����%d�н���\n',k,jsav)
%        for i=1:m
%            temp = A(i,k);
%           temp1 = A(i,jsav);
%            A(i,jsav) = temp;
%            A(i,k) = temp1;
%        end
%        if g=='y'  % ѡ����ʾȫ������.
%            disp(A);
%            disp('�������ڵ�����Ϊ: ');
%            disp(col');
%            pause;
%        end
%    end
    for j = k+1:m       % ʹ��Ԫ���·�����Ԫ�ر�Ϊ��.
        Ajk=A(j,k);Akk=A(k,k);
        L(j,k) = A(j,k)/A(k,k);
        for i = 1:n
            A(j,i) = A(j,i) - L(j,k)*A(k,i);
        end
        if g=='y'  % ѡ����ʾȫ������.
            fprintf('����%d�г���%4.4f/%4.4f,�ӵ�%d���м�ȥ\n',k,Ajk,Akk,j)
            fprintf('ʹA(%d,%d)������Ԫ��\n',j,k)
            disp(A)
            pause;
        end
    end
end
% ��Ԫ�������.
if (A(m,m) == 0)         % �������ϵ���Ƿ�����.
    disp('����ϵ������')
    disp(A);
    return;
end
% ��ʾ���ɵ���������ʽ.
disp('������󻯳ɵ���������ʽ:');
U=A

% ���ش�����.
for k=m:-1:1
    for j =k-1:-1:1       % ʹ��Ԫ���Ϸ�����Ԫ�ر�Ϊ��.
        Ajk=A(j,k); Akk=A(k,k);
        Lh(j,k) = A(j,k)/A(k,k);
        for i = 1:n
            A(j,i) = A(j,i) - Lh(j,k)*A(k,i);
        end
        if g=='y' % ѡ����ʾȫ������.
            fprintf('����%d�г���%4.4f/%4.4f,�ӵ�%d���м�ȥ\n',k,Ajk,Akk,j)
            fprintf('ʹA(%d,%d)������Ԫ��\n',j,k)
            disp(A)
            pause;
        end
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

% �����й��н����������˳��.
%for i = 1:m
%    if(col(i) ~= i)
%        disp('�������ڵ�����Ϊ: ');
%        disp(col');
%        break;
%    end
%end
if n==m
    disp('���̳�������ڣ��������ȫ�����ɽ�'),d=[];return
else
    for j = 1:n-m
        for i = 1:m
            xo(j,col(i)) = x(j,i);
        end
    end

    % ��ʾ������Ľ�.
    disp('���ص�����ԭʼ������󣬷�����Ľ�Ϊ:');
    d=xo';
end