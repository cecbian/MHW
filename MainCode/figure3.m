% Code for Figure3 
% Author: CeBian
% UpdateDate: 2023/01/05

% Line Chart
% Dataset: SourceDataFigure3
%   : regional area mean of MHW diagnistics
%   glb : Global sea-ice-free ocean
%   wbc: Western boundary currents and thier extension (WBCEs)
%   ebc: Eastern Boundary Upwelling System
%   acc: Southern Ocean
%   cetp: Central-to-Eastern Equatorial Pacific
%   mo: Subtropical Gyre Interior

clear; close all
load SourceDataFigure3
figure(1); set(gcf,'Position',[10,50,700,620]);
Draw_figure3(1,glb,'a) Global sea-ice-free ocean')
Draw_figure3(2,wbc,'b) WBCEs')
Draw_figure3(3,acc,'c) Southern Ocean')
Draw_figure3(4,cetp,'d) Central-to-Eastern Equatorial Pacific')
Draw_figure3(5,ebc,'e) Eastern Boundary Upwelling System')
Draw_figure3(6,mo,'f) Subtropical Gyre Interior')

print -dpng -r600 Figure3.png



