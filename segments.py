# -*- coding: utf-8 -*-
"""
Created on Sun Apr 23 10:24:30 2023

@author: SOFIA
"""

import numpy as np
import matplotlib.pyplot as plt
import scipy.io

# Load data
data = scipy.io.loadmat('P1_high1.mat')

fs = data['fs'][0,0]  # Sampling frequency
y = data['y']  # EEG signals
trig = data['trig'].flatten()  # Trigger signals

# Create time array in seconds
step = 1/fs
time_end = len(trig)/fs
time = np.arange(step, time_end+step, step)

## "trig" contains -1, 1, and 2, which indicate the type of stimulus. Here we create a time array to know when they occur.
list_trig_target = []
list_trig_nontarget = []
list_trig_distractor = []

for i in range(len(trig)):
    if trig[i] == 1:
        list_trig_target.append(i)
    elif trig[i] == 2:
        list_trig_nontarget.append(i)
    elif trig[i] == -1:
        list_trig_distractor.append(i)

## Now we select from 300ms to 600ms after the stimulus
y_target = []
y_nontarget = []
y_distractor = []


distance=[]
for i in range(0,len(list_trig_target)-1):
    distance.append(list_trig_target[i+1]-list_trig_target[i])
    
#distnace in milliseconds
result = [x/256 for x in distance] 
result1= [x*1000 for x in result] 
    

## Target
for i in range(len(list_trig_target)):
    y_target.append(y[list_trig_target[i]+int(0.3*fs):list_trig_target[i]+int(0.6*fs), :])
## Nontarget
for i in range(len(list_trig_nontarget)):
    y_nontarget.append(y[list_trig_nontarget[i]+int(0.3*fs):list_trig_nontarget[i]+int(0.6*fs), :])
## Distractor
for i in range(len(list_trig_distractor)):
    y_distractor.append(y[list_trig_distractor[i]+int(0.3*fs):list_trig_distractor[i]+int(0.6*fs), :])
    
## We now have 3 lists of 3D arrays, each containing the EEG signals for each stimulus type. We can now average them to get the average signal for each stimulus type.
#y_target = np.mean(y_target, axis=0)
#y_nontarget = np.mean(y_nontarget, axis=0)
#y_distractor = np.mean(y_distractor, axis=0)
fz=list()
c3=list()
c4=list()
cz=list()
cp1=list()
cp2=list()
cpz=list()
pz=list()
for i in range(0,len(y_target)):
    fz.append(y_target[i][:,0])
    c3.append(y_target[i][:,1])
    c4.append(y_target[i][:,2])
    cz.append(y_target[i][:,3])
    cp1.append(y_target[i][:,4])
    cp2.append(y_target[i][:,5])
    cpz.append(y_target[i][:,6])
    pz.append(y_target[i][:,7])
    #plt.plot(y_target[i][:,0])
    
FZ=np.array(fz)
C3=np.array(c3)
C4=np.array(c4)
CZ=np.array(cz)
CP1=np.array(cp1)
CP2=np.array(cp2)
CPZ=np.array(cpz)
PZ=np.array(pz)



plt.subplot(2, 1, 1)
plt.plot(fz)
plt.title('All P300 Respond Events on Fz for Patient 1, High Ac')

plt.subplot(2, 1, 2)
plt.plot(np.mean(FZ,axis=0))
plt.title('Mean P300 Respond Event on Fz')
'''

plt.subplot(8,1,1)
plt.plot(np.mean(FZ,axis=0))
plt.title('Mean P300 Respond Event on Fz')

plt.subplot(8,1,2)
plt.plot(np.mean(C3,axis=0),color='red')
plt.title('Mean P300 Respond Event on C1')

plt.subplot(8,1,3)
plt.plot(np.mean(C4,axis=0),color='black')
plt.title('Mean P300 Respond Event on C2')

plt.subplot(8,1,4)
plt.plot(np.mean(CZ,axis=0),color='yellow')
plt.title('Mean P300 Respond Event on CZ')

plt.subplot(8,1,5)
plt.plot(np.mean(CP1,axis=0),color='pink')
plt.title('Mean P300 Respond Event on CP1')

plt.subplot(8,1,6)
plt.plot(np.mean(CP2,axis=0),color='orange')
plt.title('Mean P300 Respond Event on CP2')

plt.subplot(8,1,7)
plt.plot(np.mean(CPZ,axis=0),color='green')
plt.title('Mean P300 Respond Event on CPz')

plt.subplot(8,1,8)
plt.plot(np.mean(PZ,axis=0))
plt.title('Mean P300 Respond Event on Pz')


'''




