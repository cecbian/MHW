% Code for Figure4 

% Author: CeBian
% UpdateDate: 2023/01/05
% Dataset: SourceDataFigure4
%   Global distribution of the effects of 
%   different physical processes on the life 
%   cycles of MHWs with a spatial scale larger
%   than that of mesoscale eddies. 

% variables:
%  r_: Diagnostics during MHW Growth Period
%  d_: Diagnostics during MHW Decay Period
%   ta: total temperature anomalous
%   adv: total advection (HFC)
%   eadv: eddy heat convection (HFC-E)
%   madv: mean-flow heat convection (HFC-M)
%   pmadc: prime-bar term in advection (not represent in menuscript)
%   shf: net heat flux (NHF)
%   mix: mixing (MIX)
%   pos: position setting of Figure2
%   lons, lats: longitude and latitude of the individual diagnostics point.

clear; close all
load SourceDataFigure4

figure(1); set(gcf,'Position',[10,10,640,800]);

h1=subplot(4,2,1); 
h1.Position= pos(1,:);
Draw_Figure2(lons,lats,r_eadv,'a)    HFC-E'); 

h2=subplot(4,2,2);
h2.Position= pos(2,:);
Draw_Figure2(lons,lats,d_eadv,'e)'); 

h3=subplot(4,2,3);
h3.Position= pos(3,:);
Draw_Figure2(lons,lats,r_madv,'b)    HFC-M'); 

h4=subplot(4,2,4);
h4.Position= pos(4,:);
Draw_Figure2(lons,lats,d_madv,'f)'); 

h5=subplot(4,2,5);
h5.Position= pos(5,:);
Draw_Figure2(lons,lats,r_shf,'c)    NHF'); 

h6=subplot(4,2,6);
h6.Position= pos(6,:);
Draw_Figure2(lons,lats,d_shf,'g)'); 

h7=subplot(4,2,7);
h7.Position= pos(7,:);
Draw_Figure2(lons,lats,r_mix,'d)    MIX'); 

h8=subplot(4,2,8);
h8.Position= pos(8,:);
Draw_Figure2(lons,lats,d_mix,'h)'); 
     
hc = colorbar('southoutside');
    hc.Position=[0.32 0.05 0.35 0.015];
    set(hc,'linewidth',1);
    set(hc,'fontsize',9); 
    hc.Label.String = ' ^oC '; 
    hc.Label.Position=[1.8 0 0];
    hc.Label.FontSize= 10;
    set(hc,'ticklength',0.002);   
   
print -dpng -r600 Figure4.png
     
    
