close all,clear
line([-3,3],[1.5,-1.5],'linewidth',2,'color','r')
hold on,line([-3,3],[1.55,-1.45],'color','m')
axis equal
grid on
axis square
hold on,line([-3,3],[2.55,-0.45],'color','b')
hold on,line([-3,3],[2.5,-0.5],'color','b')
axis([-3 3 -2 4]),grid on,hold on
hold on,line([0,2],[0,0],'linewidth',3,'color','g')
set(gcf,'color','w')
