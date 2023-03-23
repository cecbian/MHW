% Figure1_contour
clear; close all; 
load figure1_data_contour
figure(1); set(gcf,'Position',[10,10,800,700]);

h1=subplot(4,3,1);
h1.Position= pos(1,:); 
name='a)                   Intensity';
Draw_Figure1(A.lons,A.lats,A.mean_int,name); 
caxis([0,3.5])

h2=subplot(4,3,2);
h2.Position= pos(2,:);
name='b)                  Frequency';
Draw_Figure1(A.lons,A.lats,A.frequency,name); 
caxis([0,4])

h3=subplot(4,3,3);
h3.Position= pos(3,:);
name='c)                    Duration';
Draw_Figure1(A.lons,A.lats,A.duration,name); 
caxis([0,60])

h4=subplot(4,3,4);
h4.Position= pos(4,:);
Draw_Figure1(B.lons,B.lats,B.mean_int,'d) '); 
caxis([0,3.5])

h5=subplot(4,3,5);
h5.Position= pos(5,:);
Draw_Figure1(B.lons,B.lats,B.frequency,'e) '); 
caxis([0,4]) 

h6=subplot(4,3,6);
h6.Position= pos(6,:);
Draw_Figure1(B.lons,B.lats,B.duration,'f) '); 
caxis([0,60])

h7=subplot(4,3,7);
h7.Position= pos(7,:);
Draw_Figure1(C.lons,C.lats,C.mean_int,'g) ');
caxis([0,3.5])

hc1 = colorbar('southoutside');
    hc1.Position=[0.0285 0.35 0.3 0.01];
    set(hc1,'linewidth',1);
    set(hc1,'fontsize',9); 
    hc1.Label.String = '(^oC)'; 
    hc1.Label.Position=[3.5*0.5 -2.5 0];
    set(hc1,'ticklength',0.002);
    
h8=subplot(4,3,8);
h8.Position= pos(8,:);
Draw_Figure1(C.lons,C.lats,C.frequency,'h) '); 
caxis([0,4])
hc2 = colorbar('southoutside');
    hc2.Position=[0.35 0.35 0.3 0.01];
    set(hc2,'linewidth',1);
    set(hc2,'fontsize',9); 
    hc2.Label.String = '(Count)'; 
    hc2.Label.Position=[2 -2.5 0];
    set(hc2,'ticklength',0.002);
    
h9=subplot(4,3,9);
h9.Position= pos(9,:);
Draw_Figure1(C.lons,C.lats,C.duration,'i) '); 
caxis([0,60])
hc3 = colorbar('southoutside');
    hc3.Position=[0.67 0.35 0.3 0.01];
    set(hc3,'linewidth',1);
    set(hc3,'fontsize',9); 
    hc3.Label.String = '(Days)'; 
    hc3.Label.Position=[30 -2.5 0];
    set(hc3,'ticklength',0.002);
    
% Figure1_BAR  
load figure1_data_bar
for ip=1:3
        
    eval(['h',num2str(9+ip),'=subplot(4,3,9+',num2str(ip),')'])
    eval(['h',num2str(9+ip),'.Position= pos(',num2str(ip+9),',:);'])
    eval(['data=',var{ip},'(:,1);'])
    eval(['err=',var{ip},'(:,2);'])
    %eval(['cdata=round(100*',cor{ip},')/100;'])
    
    for ik=1:length(data)
        eval(['a',num2str(ik),' = bar(x(ik),data(ik),0.5); hold on; '])
        eval(['a',num2str(ik),'.FaceColor = colors(c1(ik),:); a',num2str(ik),...
            '.EdgeColor = "none"; a',num2str(ik),'.BarWidth = 1; '])
        b1=errorbar(x(ik),data(ik),err(ik));
        b1.Color = [0.9290 0.6940 0.1250]; 
        b1.LineWidth = 3;                   
    end
        set(gca,'xtick', 1:3, 'xticklabel', [],'fontsize',8,'fontweight','bold'); 
        xtickangle(45);
        set(gca, 'tickdir', 'in', 'ticklength', [.005 .005]);
        
        if ip==1
            h= legend([a1,a2,a3],{'OISST','CESM-H','CMIP6'},'Location',[0.04 0.03 0.30 0.01]); 
            set(h,'Orientation','horizon','box','off');
            h.NumColumns = 3;   
            ylim([0,3])
        end
        if ip==3
            ylim([0,40])
        end
        
        if ip==1
            ylabel('(^oC/ year)')
        elseif ip==2
            ylabel('(Counts/ year)')
        elseif ip==3
            ylabel('(days/ year)')
        end
        
    if ip==1
        hold on;text(-0.5,3*1.15,{'j) '},'fontsize',10,'fontweight','bold')
    elseif ip==2
        hold on;text(-0.5,5*1.15,{'k) '},'fontsize',10,'fontweight','bold')
    elseif ip==3
        hold on;text(-0.5,40*1.15,{'l) '},'fontsize',10,'fontweight','bold')
    end

end

%saveas(gcf,'figure1.png')    
