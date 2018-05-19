% y1 = [18.3 19.8 17.6;
%      38.3 31.1 35.5;
%      183.6 149.8 160;
%      237.7 143.1 160;
%      572.6 461.7 409.2];
%  y2 = [10 15 15.5;69 62.5 30;165 150 140;180 159 136;260 240 230];
%  y3 = [5.5 9.5 10;42 40 17;110 103 90;118 104 89;175 163 156];
%  y4 = [2 2.5 2;5 3.5 2;6 6 5.5;7.5 6 5;12 12 11.5];
%  y5 = [183.6 18.1 17.5 17.5 17.4 17.5;165 13 10 10 9 8.5;110 7.5 5.5 5 5 5;6 2 2 1.5 1.5 1.5];
 
 %抗盐测试
%  x1 = [4 6 8 10];
%  bar(x1,y5)
%  set(gca,'xticklabel',{'漏斗粘度','\theta_{600}','\theta_{300}','\theta_3'});
%  title('\fontsize{10}\color{blue}WM -Ⅰ(含量0.6%)抗盐性能测试');
%  xlabel('性能参数');
%  legend('0%','2%','4%','6%','8%','10%')

 %漏斗粘度测试
%  x1 = [2 4 6 8 10];
%  bar(x1,y1)
%  set(gca,'xticklabel',{'0.2%','0.4%','0.6%','0.8%','1.0%'});
%  title('\fontsize{10}\color{blue}WM -Ⅰ漏斗粘度测试');
%  xlabel('WM -Ⅰ含量');
%  ylabel('时间(s)');
%  legend('第一天','第二天','第三天');
 
 %CMC,PHP,植物胶
ld = [27.9 46.0 66.3 97.3  133.4];
theta6 = [13 26 38 67.5 109];
theta3 = [7 16 24.5 45.5 77];
plot(ld, theta6, ld, theta3);
title('\fontsize{13}CMC钻井液\color{red}漏斗粘度\color{black}与\color{green}旋转粘度\color{black}的数值关系')
xlabel('漏斗粘度/s');
ylabel('旋转粘度');
legend('theta6','theta3');
p1 = polyfit(ld, theta6, 1);
p2 = polyfit(ld, theta3, 1);
hold on;
scatter(ld,theta6,'filled','pm','red');