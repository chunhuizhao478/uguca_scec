clear all; close all; clc;
%% uguca results: sliprate
datauguca = load("./res/sliprate0.csv");
filename2 = 'sliprate.gif';
for i = 1:149
figure(1);
plot(linspace(0,71975,2880)',datauguca(i,:)*2,'-k');hold on;
hold off;
xlim([0 71975])
legend('uguca-25m','location','northeast',FontSize=10)
title("SCEC Benchmark TPV101","FontSize",30)
xlabel("Along Fault (m)","FontSize",25)
ylabel("Slip Rate (m/s)","FontSize",25)
ax = gca;
ax.FontSize = 15; 
drawnow; pause(0.1)
frame = getframe(1);
im = frame2im(frame);
[imind,cm] = rgb2ind(im,256);
del =0.1;
if i == 1
imwrite(imind,cm,filename2,'gif','Loopcount',inf,'DelayTime',del);
else
imwrite(imind,cm,filename2,'gif','WriteMode','append','DelayTime',del);
end
end
%% uguca results: shear stress
clear all; close all; clc;
datauguca = load("./res/shearstress0.csv");
filename2 = 'shearstress.gif';
for i = 1:149
figure(1);
plot(linspace(0,71975,2880)',datauguca(i,:),'-k');hold on;
hold off;
xlim([0 71975])
legend('uguca-25m','location','northeast',FontSize=10)
title("SCEC Benchmark TPV101","FontSize",30)
xlabel("Along Fault (m)","FontSize",25)
ylabel("Shear Stress (m/s)","FontSize",25)
ax = gca;
ax.FontSize = 15; 
drawnow; pause(0.1)
frame = getframe(1);
im = frame2im(frame);
[imind,cm] = rgb2ind(im,256);
del =0.1;
if i == 1
imwrite(imind,cm,filename2,'gif','Loopcount',inf,'DelayTime',del);
else
imwrite(imind,cm,filename2,'gif','WriteMode','append','DelayTime',del);
end
end