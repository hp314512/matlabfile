%WM-1���ճ�ȣ�����ճ��

%����ʵ��
% a = [13	7.5	2
%     10	5.5	2
%     10	5	1.5
%     9	5	1.5
%     8.5	5	1.5];
% ua = [90;a(:,1)*0.5];
% up = [50;a(:,1) - a(:,2)];
% t0 = [20.44;0.511*(2*a(:,2) - a(:,1))];
% ts = [45.99;0.511*a(:,3)];
% x = [0:2:10];
% 
% plot(x,ua,'-o',x,up,'-o');
% ax = gca;
% ax.XTick = [0:2:10];
% ax.XTickLabel = {'0%','2%','4%','6%','8%','10%'};
% legend('\mu_{a}','\mu_{p}');
% xlabel('NaCl����');
% ylabel('ճ��/mPa\cdots','rotation',0,'Position',[0 91 0])
% 
% figure
% plot(x,t0,'-^',x,ts,'-^');
% ax = gca;
% ax.XTick = [0:2:10];
% ax.XTickLabel = {'0%','2%','4%','6%','8%','10%'};
% legend('\tau_{0}������','\tau_{s}������');
% xlabel('NaCl����');
% ylabel('����/Pa','rotation',0,'Position',[0 51 0])

%����ʵ��
% a = [ 3.5   2.5 1.5
%         4	3	2
%         4	3	2
%         4	3	2
%         4	3	2]
% ua = [90;a(:,1)*0.5];
% up = [50;a(:,1) - a(:,2)];
% t0 = [20.44;0.511*(2*a(:,2) - a(:,1))];
% ts = [45.99;0.511*a(:,3)];
% x = [0 1:2:9];
% 
% plot(x,ua,'-o',x,up,'-o');
% ax = gca;
% ax.XTick = [0 1:2:9];
% ax.XTickLabel = {'0%','1%','3%','5%','7%','9%'};
% legend('\mu_{a}','\mu_{p}');
% xlabel('CaCl_{\fontsize{7}2}����');
% ylabel('ճ��/mPa\cdots','rotation',0,'Position',[0 91 0])
% 
% figure
% plot(x,t0,'-^',x,ts,'-^');
% ax = gca;
% ax.XTick = [0 1:2:9];
% ax.XTickLabel = {'0%','1%','3%','5%','7%','9%'};
% legend('\tau_{0}������','\tau_{s}������');
% xlabel('CaCl_{\fontsize{7}2}����');
% ylabel('����/Pa','rotation',0,'Position',[0 51 0])

% figure
% plot(x,t0,'-^',x,ts,'-^');
% ax = gca;
% ax.XTick = 0.002:0.002:0.006;
% ax.XTickLabel = {'CMC','ֲ�ｺ','PHP'};
% legend('\tau_{0}������','\tau_{s}������');
% xlabel('������0.4%�Ĳ��ϼ���');
% ylabel('����/Pa','rotation',0,'Position',[0.002 25.05 0])

% figure
% plot(x,b,'-o');
% ax = gca;
% ax.XTick = 0:0.002:0.008;
% ax.XTickLabel = {'0','0.2%','0.4%','0.6%','0.8%'};
% legend('pH','��ʧ��','������');
% xlabel('�����е�WM-��Ũ��');
