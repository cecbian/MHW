function Draw_figure3(num,data,name)
% Draw_Figure3: Line Figure section setting of Figure3 
ys=0.1:0.31:1;
pos=[0.1 ys(3) 0.35 0.22; 0.6 ys(3)  0.35 0.22;...
     0.1 ys(2) 0.35 0.22; 0.6 ys(2)  0.35 0.22;...
     0.1 ys(1) 0.35 0.22; 0.6 ys(1)  0.35 0.22]

eval(['h=subplot(3,2,',num2str(num),')'])
h.Position= pos(num,:);

    hh1=plot(data.TA,'k','linewidth',1.3); hold on
    hh2=plot(data.eADV,'color',[0.85 0.325 0.098],'linewidth',1.3); hold on
    hh3=plot(data.mADV,'color',[0.929, 0.694, 0.125],'linewidth',1.3); hold on
    hh5=plot(data.SHF,'color',[0, 0.447, 0.741],'linewidth',1.3); hold on
    hh6=plot(data.MIX,'color',[0.466, 0.674, 0.188],'linewidth',1.3); hold on
    set(gca,'xtick',1:5,'xticklabel',{'','grow','peak','decay',''})
    xlim([1,5]);
    ylim([-0.5,1])
    if num==2; ylim([-1,3]); end
if num==6
    h1 = legend([hh1,hh2,hh3,hh5,hh6],...
        {'T_a','HFC-E','HFC-M','NHF','MIX'},'location','Southoutside'); 
    set(h1,'Orientation','horizon','box','off','fontsize',6,'fontweight','bold');
    h1.Position=[0.05,-0.02,0.5,0.12];
    h1.NumColumns = 10;  
end     
    ylabel({'Contribution (^oC)'}); 
    hh = title(name, 'fontweight', 'normal');
    hh.HorizontalAlignment = 'left'; 
    pp =hh.Position; 
    set(hh,'Position', [pp(1)-2,pp(2),pp(3)]);
       

