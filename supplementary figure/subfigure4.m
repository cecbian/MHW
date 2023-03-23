%SubFiigure3: region defination
clear;close all
load subfigure4_data

figure
set(gcf,'Position',[100 100 740 400]);
set(gca,'Position',[.13 .17 .80 .74]);

% SSHA contour
    m_proj('robinson','lon',[0,360],'lat',[-75,75]);
    m_pcolor(lons,lats,ssha); shading interp;caxis([0,200])
    m_coast('patch',[.1 .1 .1],'edgecolor',[.1 .1 .1]);
    m_grid('xaxis','bottom','linestyle','none','linewi',1);
    hold on; m_grid('BackgroundColor', [0.7 0.7 0.7],'xaxis','bottom',...
   'linestyle','none','ticklength',0.001,'xticklabel',[],'yticklabel',[]);
    color=colormap(cmocean('matter',24)); colormap(color(1:20,:));
    
    h = colorbar('southoutside'); 
    set(h,'pos',[0.255 0.088 0.545 0.03],'tickdir','out')
    set(h,'linewidth',1,'fontsize',9);
    h.Label.String = '(cm^2)'; 
    h.Label.Position=[210 1.5 0];
    set(h,'ticklength',0.002);  
    set(gcf,'color','w');
    ttl = title(name,'fontsize',12);
    ttl.Units = 'Normalize'; 

% Regions in straight line
Colors=[0 1 1; 0 1 0; 1 1 0; 1 0 1; 0 1 1;0 1 1; 0 1 0];   
[wbc,mos,tp,acc,brz,agu,npo] = region_split;
matrix={'wbc','mos','tp','acc','brz','agu','npo'};
for im =1:length(matrix)
    eval(['REGION = round(',matrix{im},'/2.5);'])
    REGION(REGION==0)=1;
    np = size(REGION,3);
    for ip=1:np
        xx=REGION(:,1,ip); yy=REGION(:,2,ip);
        hold on; m_line(lon(xx),lat(yy),'linewi',1.2,'color',Colors(im,:));
    end
end

% EBCs in curve line
lon=0.05:0.1:360; lat=-89.95:0.1:89.95;
name={'cal','can','peru','ben'};
for ik=1:length(name)
    eval(['rg=rg_',name{ik},';']) 
    longitude=rg(:,1); latitude=rg(:,2);
    lat0=unique(latitude); lon0=nan(length(lat0),2);
    for k=1:length(lat0)
        p=find(latitude==lat0(k));
        lon0(k,1)=min(longitude(p));
        lon0(k,2)=max(longitude(p));
    end
    hold on; m_line(lon([lon0(:,1);lon0(end:-1:1,2);lon0(1,1)]),...
    lat([lat0;lat0(end:-1:1);lat0(1,1)]),'linewi',1.2,'color',[0.3 0.3 1]);
end

saveas(gcf,'subfigure3.png')

