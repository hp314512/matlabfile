%���۵�ʵ��ͼ
%��ϩ��
% plot(a(1,:),a(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.05:0.05:0.3;
% ax.XTickLabel = {'5%','10%','15%','20%','25%','30%'};
% xlabel('����Ũ��');
% ylabel('©��ճ��/s','rotation',0,'Position',[0.05 45.3 0]);

%��ϩ���
% plot(b(1,:),b(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.05:0.05:0.25;
% ax.XTickLabel = {'5%','10%','15%','20%','25%'};
% xlabel('����Ũ��');
% ylabel('©��ճ��/s','rotation',0,'Position',[0.05 27.3 0])

%��ϩ��+��ϩ�ᰴ
% plot(c(1,:),c(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.05:0.05:0.25;
% ax.XTickLabel = {'5%','10%','15%','20%','25%'};
% xlabel('����Ũ��');
% ylabel('©��ճ��/s','rotation',0,'Position',[0.05 30.3 0])

%�¶�Ӱ��
% plot(d(1,:),d(2,:),'b-o');
% ax = gca;
% ax.XTick = 60:10:90;
% ax.XTickLabel = {'60','70','80','90'};
% xlabel('�¶�/\circC');
% ylabel('�ۺϿ�ʼʱ��/min','rotation',0,'Position',[60 20.3 0]);

%pHӰ��
% bar(e(1,:),e(2:end,:)');
% ax = gca;
% ax.XTick = 0.05:0.05:0.3;
% ax.XTickLabel = {'5%','10%','15%','20%','25%','30%'};
% legend('pH < 7','pH > 7');
% xlabel('����Ũ��');
% ylabel('©��ճ��/s','rotation',0,'Position',[0 45.3 0])

%������Ӱ��
% plot(f(1,:),f(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.0005:0.0005:0.003;
% ax.XTickLabel = {'60','70','80','90'};
% xlabel('����������');
% ylabel('©��ճ��/s','rotation',0,'Position',[0.0005 23.06 0]);

%pH��ճ��
a = [2:6;26 38 43 43 43];
plot(a(1, :),a(2,:),'b-o');
ax = gca;
ax.XTick = 2:6;
ax.XTickLabel = {'2','3','4','5','6'};
xlabel('��Ӧʱ��/h');
ylabel('©��ճ��/s','rotation',0,'Position',[2 44 0]);