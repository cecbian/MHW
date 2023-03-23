clear; close all
load subfigure3_data

figure(1); set(gcf,'Position',[10,10,640,400]);

h1=subplot(2,2,1);
h1.Position= pos(1,:);
Draw_Figure2(lons,lats,r_vmix,'a)    VMIX');  

h2=subplot(2,2,2);
h2.Position= pos(2,:);
Draw_Figure2(lons,lats,d_vmix,'c)'); 

h3=subplot(2,2,3);
h3.Position= pos(3,:);
Draw_Figure2(lons,lats,r_hmix,'b)    HMIX'); 

h4=subplot(2,2,4);
h4.Position= pos(4,:);
Draw_Figure2(lons,lats,d_hmix,'d)'); 

hc = colorbar('southoutside');
    hc.Position=[0.32 0.1 0.35 0.015];
    set(hc,'linewidth',1);
    set(hc,'fontsize',9); 
    hc.Label.String = ' ^oC '; 
    hc.Label.Position=[1.8 0 0];
    hc.Label.FontSize= 10;
    set(hc,'ticklength',0.002);   

%saveas(gcf,'subfigure3.png')    
    
