%WM-1���ճ�ȣ�����ճ��
% ua = [a(:,1)*0.5];
% up = [a(:,1) - a(:,2)];
% t0 = [0.511*(2*a(:,2) - a(:,1))];
% ts = [0.511*a(:,3)];
% x = 0.002:0.002:0.006;
% 
% plot(x,ua,'-o',x,up,'-o');
% ax = gca;
% ax.XTick = 0.002:0.002:0.006;
% ax.XTickLabel = {'CMC','ֲ�ｺ','PHP'};
% legend('\mu_{a}','\mu_{p}');
% xlabel('������0.4%�Ĳ��ϼ���');
% ylabel('ճ��/mPa\cdots','rotation',0,'Position',[0.002 50.1 0])
% 
% figure
% plot(x,t0,'-^',x,ts,'-^');
% ax = gca;
% ax.XTick = 0.002:0.002:0.006;
% ax.XTickLabel = {'CMC','ֲ�ｺ','PHP'};
% legend('\tau_{0}������','\tau_{s}������');
% xlabel('������0.4%�Ĳ��ϼ���');
% ylabel('����/Pa','rotation',0,'Position',[0.002 25.05 0])

% plot(x,b,'-o');
% ax = gca;
% ax.XTick = 0:0.002:0.008;
% ax.XTickLabel = {'0','0.2%','0.4%','0.6%','0.8%'};
% legend('pH','��ʧ��','������');
% xlabel('�����е�WM-��Ũ��');
