%% MHW : frequency duration intensity
clear; clc; close all
load subfigure1_data
figure(1); set(gcf,'Position',[10,10,800,600]);
h1=subplot(3,3,1)
h1.Position= pos(1,:); 
name='a)                   Intensity';
Draw_Figure1(lons,lats,A.mean_int,name); caxis([0,4])

h2=subplot(3,3,2)
h2.Position= pos(2,:);
name='b)                  Frequency';
Draw_Figure1(lons,lats,A.frequency,name); caxis([0,3])

h3=subplot(3,3,3)
h3.Position= pos(3,:);
name='c)                    Duration';
Draw_Figure1(lons,lats,A.duration,name); caxis([0,60])

h4=subplot(3,3,4);
h4.Position= pos(4,:);
Draw_Figure1(lons,lats,B.mean_int,'d)'); caxis([0,4])

hc1 = colorbar('southoutside');
    hc1.Position=[0.0285 0.47 0.3 0.02];  
    set(hc1,'linewidth',1);
    set(hc1,'fontsize',9); 
    hc1.Label.String = '(^oC)'; 
    hc1.Label.Position=[4*0.5 -2.2 0];
    set(hc1,'ticklength',0.002);
    
h5=subplot(3,3,5)
h5.Position= pos(5,:);
Draw_Figure1(lons,lats,B.frequency,'e)'); caxis([0,3])

hc2 = colorbar('southoutside');
    hc2.Position=[0.35 0.47 0.3 0.02];
    set(hc2,'linewidth',1);
    set(hc2,'fontsize',9); 
    hc2.Label.String = '(Count)'; 
    hc2.Label.Position=[3*0.5 -2.2 0];
    set(hc2,'ticklength',0.002);
    
h6=subplot(3,3,6)
h6.Position= pos(6,:);
Draw_Figure1(lons,lats,B.duration,'f)'); caxis([0,60])

hc3 = colorbar('southoutside');
    hc3.Position=[0.67 0.47 0.3 0.02];
    set(hc3,'linewidth',1);
    set(hc3,'fontsize',9); 
    hc3.Label.String = '(Days)'; 
    hc3.Label.Position=[60*0.5 -2.2 0];
    set(hc3,'ticklength',0.002);
    
h7=subplot(3,3,7)
h7.Position= pos(7,:); 
Draw_Figure1(lons,lats,B.mean_int-A.mean_int,'g)');
cmocean('balance',14); caxis([-4,4])
hc4 = colorbar('southoutside');
    hc4.Position=[0.0285 0.1 0.3 0.02];hc4.Label.Position=[0 -2.2 0];
    set(hc4,'linewidth',1);
    set(hc4,'fontsize',9); 
    hc4.Label.String = '(^oC)'; 
    set(hc4,'ticklength',0.002);

h8=subplot(3,3,8)
h8.Position= pos(8,:);
Draw_Figure1(lons,lats,B.frequency-A.frequency,'h)'); 
cmocean('balance',14); caxis([-3,3])
hc5 = colorbar('southoutside');
    hc5.Position=[0.35 0.1 0.3 0.02];
    set(hc5,'linewidth',1);
    set(hc5,'fontsize',9); 
    hc5.Label.String = '(Count)'; hc5.Label.Position=[0 -2.2 0];
    set(hc5,'ticklength',0.002);

h9=subplot(3,3,9)
h9.Position= pos(9,:);
Draw_Figure1(lons,lats,B.duration-A.duration,'i)');
cmocean('balance',14); caxis([-60,60])
hc6 = colorbar('southoutside');
    hc6.Position=[0.67 0.1 0.3 0.02];
    set(hc6,'linewidth',1);
    set(hc6,'fontsize',9); 
    hc6.Label.String = '(Days)'; hc6.Label.Position=[0 -2.2 0];
    set(hc6,'ticklength',0.002);

%saveas(gcf,'subfigure1.png')  
  