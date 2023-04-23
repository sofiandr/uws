clear all;

load('P1_high1.mat') % select low or high ac dataset and subject
trigH1=trig;
load('P1_high2.mat')
trigH2=trig;
load('P1_low1.mat')
trigL1=trig;
load('P1_low2.mat')
trigL2=trig;


load('P2_high1.mat') % select low or high ac dataset and subject
trig2H1=trig;
load('P2_high2.mat')
trig2H2=trig;
load('P2_low1.mat')
trig2L1=trig;
load('P2_low2.mat')
trig2L2=trig;
% create time array in seconds
fs=fs;

% step=1/fs;
% time_end=length(trig)/fs;
% time= step:step:time_end;
% 
% 


figure(1);
ax1=subplot(4,1,1)
plot(trigH1)
title(' Channel Fz, Subject 1, High Accuracy')
xlabel('Time (sec)')
ylabel('-1: distractor | +1: nontarget | +2: target')

ax2=subplot(4,1,2)
plot(trigL1,"red")
title(' Vibrations on Different Regions')
xlabel('Time (sec)')


ax3=subplot(4,1,3)
plot(trigH2)
title(' Channel Fz, Subject 1, High Accuracy')
xlabel('Time (sec)')


ax4=subplot(4,1,4)
plot(trigL2,"red")
title(' Vibrations on Different Regions')
xlabel('Time (sec)')
ylabel('-1: distractor | +1: nontarget | +2: target')

figure(2);
ax1=subplot(4,1,1)
plot(trig2H1)
title(' Vibrations on Different Regions, Subject 1, High Accuracy, Set1')
xlabel('Time (sec)')
ylabel('-1: distractor | +1: nontarget | +2: target')

ax2=subplot(4,1,2)
plot(trig2L1,"red")
title(' Vibrations on Different Regions, Subject 1, Low Accuracy, Set1')

ax3=subplot(4,1,3)
plot(trig2H2)
title(' Vibrations on Different Regions, Subject 1, High Accuracy, Set1')
xlabel('Time (sec)')


ax4=subplot(4,1,4)
plot(trig2L2,"red")
title(' Vibrations on Different Regions, Subject 1, Low Accuracy, Set2')
xlabel('Time (sec)')
ylabel('-1: distractor | +1: nontarget | +2: target')

% % Find the common elements between t1 and t2
% common = intersect(trigH1, trigH2);
% 
% % Display the common elements
% disp(common);