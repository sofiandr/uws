% Basic Plotting Overview of the DataSets

% Plots 2 figures:
%  Figure 1 : plots the Fz channel on time -you choose the low or high
%  accuracy dataset- and subplots the vibrations at the same time
%  Figure 2: plots all the 8 channels of the low or high accuracy dataset.

clear all;

load('P1_high1.mat') % select low or high ac dataset and subject

% create time array in seconds
fs=fs;

step=1/fs;
time_end=length(trig)/fs;
time= step:step:time_end;
% 
% 


figure(1);
ax1=subplot(2,1,1)
plot(time,y(:,1))
title(' Channel Fz, Subject 1, High Accuracy')
xlabel('Time (sec)')
ylabel('mV')

ax2=subplot(2,1,2)
plot(time,trig,"red")
title(' Vibrations on Different Regions')
xlabel('Time (sec)')
ylabel('-1: distractor | +1: nontarget | +2: target')


linkaxes([ax1,ax2],'x');

% Plotting all 8 channels for each Subject and link axes in order to
% manually check simillarities of same areas when zooming in
regions=["Fz","C3","Cz","C4","CP1","CPz","CP2","Pz"];
AXES=[];

figure(2);
for i = 1:8
    ax1=subplot(8,1,i)
    plot(time,y(:,i))
    title(regions(i))
    AXES=[AXES,ax1]
    hold on;
end

%axis off
    linkaxes(AXES,'x')
hold off;
xlabel('Time (sec)')
ylabel('mV')
