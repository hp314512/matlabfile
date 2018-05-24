%齐金慧的实验图
%丙烯酸
% plot(a(1,:),a(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.05:0.05:0.3;
% ax.XTickLabel = {'5%','10%','15%','20%','25%','30%'};
% xlabel('单体浓度');
% ylabel('漏斗粘度/s','rotation',0,'Position',[0.05 45.3 0]);

%丙烯酸铵
% plot(b(1,:),b(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.05:0.05:0.25;
% ax.XTickLabel = {'5%','10%','15%','20%','25%'};
% xlabel('单体浓度');
% ylabel('漏斗粘度/s','rotation',0,'Position',[0.05 27.3 0])

%丙烯酸+丙烯酸按
% plot(c(1,:),c(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.05:0.05:0.25;
% ax.XTickLabel = {'5%','10%','15%','20%','25%'};
% xlabel('单体浓度');
% ylabel('漏斗粘度/s','rotation',0,'Position',[0.05 30.3 0])

%温度影响
% plot(d(1,:),d(2,:),'b-o');
% ax = gca;
% ax.XTick = 60:10:90;
% ax.XTickLabel = {'60','70','80','90'};
% xlabel('温度/\circC');
% ylabel('聚合开始时间/min','rotation',0,'Position',[60 20.3 0]);

%pH影响
% bar(e(1,:),e(2:end,:)');
% ax = gca;
% ax.XTick = 0.05:0.05:0.3;
% ax.XTickLabel = {'5%','10%','15%','20%','25%','30%'};
% legend('pH < 7','pH > 7');
% xlabel('单体浓度');
% ylabel('漏斗粘度/s','rotation',0,'Position',[0 45.3 0])

%引发剂影响
% plot(f(1,:),f(2,:),'b-o');
% ax = gca;
% ax.XTick = 0.0005:0.0005:0.003;
% ax.XTickLabel = {'60','70','80','90'};
% xlabel('引发剂加量');
% ylabel('漏斗粘度/s','rotation',0,'Position',[0.0005 23.06 0]);

%pH对粘度
a = [2:6;26 38 43 43 43];
plot(a(1, :),a(2,:),'b-o');
ax = gca;
ax.XTick = 2:6;
ax.XTickLabel = {'2','3','4','5','6'};
xlabel('反应时间/h');
ylabel('漏斗粘度/s','rotation',0,'Position',[2 44 0]);