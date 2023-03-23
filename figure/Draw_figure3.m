function Draw_figure3(num,data,name)
% Figure3 
ys=0.07:0.32:1;
pos=[0.095 ys(3) 0.36 0.22; 0.585 ys(3)  0.36 0.22;...
     0.095 ys(2) 0.36 0.22; 0.585 ys(2)  0.36 0.22;...
     0.095 ys(1) 0.36 0.22; 0.585 ys(1)  0.36 0.22]

eval(['h=subplot(3,2,',num2str(num),')'])
h.Position= pos(num,:);

    hh1=plot(data.TA,'k','linewidth',1.3); hold on
    hh2=plot(data.eADV,'m','linewidth',1.3); hold on
    hh3=plot(data.mADV,'r','linewidth',1.3); hold on
    hh5=plot(data.SHF,'b','linewidth',1.3); hold on
    hh6=plot(data.MIX,'g','linewidth',1.3); hold on
    set(gca,'xtick',1:5,'xticklabel',{'','grow','peak','decay',''})
    xlim([1,5]);
    ylim([-0.5,1])
    if num==2; ylim([-1,3]); end
if num==1
    h1 = legend([hh1,hh2,hh3,hh5,hh6],...
        {'T_a','HFC-E','HFC-M','NHF','MIX'},'location','southwest'); 
    set(h1,'Orientation','horizon','box','off','fontsize',6,'fontweight','bold');
    h1.NumColumns = 3;  
end     
    ylabel({'Contribution (^oC)'}); 
    hh = title(name, 'fontweight', 'normal');
    hh.HorizontalAlignment = 'left'; 
    pp =hh.Position; 
    set(hh,'Position', [pp(1)-2,pp(2),pp(3)]);
       

