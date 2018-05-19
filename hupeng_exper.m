%WM-1表观粘度，塑性粘度
% ua = [a(:,1)*0.5];
% up = [a(:,1) - a(:,2)];
% t0 = [0.511*(2*a(:,2) - a(:,1))];
% ts = [0.511*a(:,3)];
% x = 0.002:0.002:0.006;
% 
% plot(x,ua,'-o',x,up,'-o');
% ax = gca;
% ax.XTick = 0.002:0.002:0.006;
% ax.XTickLabel = {'CMC','植物胶','PHP'};
% legend('\mu_{a}','\mu_{p}');
% xlabel('基浆中0.4%的材料加量');
% ylabel('粘度/mPa\cdots','rotation',0,'Position',[0.002 50.1 0])
% 
% figure
% plot(x,t0,'-^',x,ts,'-^');
% ax = gca;
% ax.XTick = 0.002:0.002:0.006;
% ax.XTickLabel = {'CMC','植物胶','PHP'};
% legend('\tau_{0}动切力','\tau_{s}静切力');
% xlabel('基浆中0.4%的材料加量');
% ylabel('切力/Pa','rotation',0,'Position',[0.002 25.05 0])

% plot(x,b,'-o');
% ax = gca;
% ax.XTick = 0:0.002:0.008;
% ax.XTickLabel = {'0','0.2%','0.4%','0.6%','0.8%'};
% legend('pH','滤失量','泥饼厚度');
% xlabel('基浆中的WM-Ⅰ浓度');
