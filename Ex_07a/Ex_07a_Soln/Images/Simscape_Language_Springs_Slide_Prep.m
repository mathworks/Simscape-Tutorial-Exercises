% Copyright 2011-2021 The MathWorks, Inc.

colordef black;

%Special_Blue = [0 204 255]/255;
Special_Blue = [0 0.5 1];

%if(1==2)


%end
figure(1);
clf;

%new_sb211_h = 400;
set(gcf,'Position',[765   405   449   336]);

%set(gca,'Position',[0.15 0.63/522*new_sb211_h 0.775 0.341163*522/new_sb211_h])
%POSITION_211 = [0.15 0.583837 0.775 0.341163*522/new_sb211_h];

pc_h = plot(Simscape_Language_Spring_DATA.time,Simscape_Language_Spring_DATA.signals.values,'LineWidth',3);
title_h = title('Spring Deflection (m)');
ylabel_h = ylabel('Deflection (m)');
set(title_h,'FontSize',14);
set(ylabel_h,'FontSize',12);
grid on
set(gca,'Box','on');
axis([0 15 0 2.5]);

