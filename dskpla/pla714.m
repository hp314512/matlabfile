% ��ʵ�ô������Դ�����MATLAB�棩����7.14����pla714
%  ���������̽�Fibonacci��������
%  �»�衱������������ӿƼ���ѧ�����磬2014��7��
%
clear
A=[1,1;1,0],                % Fibonacci���о���ģ��
[p,lamda]=eig(A)            % ģ�͵ĶԽǻ�
for k=[1,3,5,10,20,50,100]
    u=p*lamda^k*inv(p)*[1;0];	% �þ���ʽ����
    sprintf('��%d��Fibonacci������ֵ��%25.0f',k,u(2,:))		 	% ��ʾ��ͬkֵ��Fibonacci��
end

