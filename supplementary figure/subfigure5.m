% Extend Figure5
clear; close all
load subfigure5_data

figure(1); set(gcf,'Position',[10,10,500,600])
subplot(3,1,1)
Draw_Figure5(lons,lats,eadv,'a)'); 

subplot(3,1,2)
Draw_Figure5(lons,lats,eeadv,'b)'); 

subplot(3,1,3);
Draw_Figure5(lons,lats,meadv,'c)');

hc = colorbar('southoutside');
    hc.Position=[0.25 0.05 0.525 0.02];
    set(hc,'linewidth',1);
    set(hc,'fontsize',9); 
    hc.Label.String = 'log_1_0(^oC/day)^2 '; 
    hc.Label.Position=[4.2 1.5 0];
    hc.Label.FontSize= 10;
    set(hc,'ticklength',0.002);   
    
saveas(gcf,'subfigure5.png')    
    