function Draw_Figure1(lons,lats,data,name)
% Draw_Figure1 : Contour scetion setting for Figure1

m_proj('robinson','lon',[1 360],'lat',[-75 75]);  
m_pcolor(lons,lats,data); shading interp; hold on  
m_coast('patch',[.1 .1 .1],'edgecolor',[.1 .1 .1]);
m_grid('xaxis','bottom','linestyle','none','ticklength',...
    0.001,'xticklabel',[],'yticklabel',[]);
cmocean('matter',14);
m_grid('BackgroundColor', [0.7 0.7 0.7],'xaxis','bottom',...
   'linestyle','none','ticklength',0.001,'xticklabel',[],'yticklabel',[]);
hh1=m_text(-15,82,name,'fontsize',10,'fontweight','bold');
hh1.Position=[-3 1.7000 0];

end

