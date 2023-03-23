function Draw_Figure2(lons,lats,data,name)
%Figure2 & Figure4
load color
m_proj('robinson','lon',[1 360],'lat',[-75 75]);  
m_pcolor(lons,lats,data); shading interp; hold on  
m_coast('patch',[.1 .1 .1],'edgecolor',[.1 .1 .1]);
m_grid('xaxis','bottom','linestyle','none','ticklength',...
    0.001,'xticklabel',[],'yticklabel',[]);
colormap(c); caxis([-1.5,1.5])
hold on;m_grid('BackgroundColor', [0.7 0.7 0.7],'xaxis','bottom',...
   'linestyle','none','ticklength',0.001,'xticklabel',[],'yticklabel',[]);
hh=m_text(-2,90,name,'fontsize',10,'fontweight','bold');
hh.Position=[-3 1.7 0];

end

