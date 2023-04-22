# uws
Draft Rep on "Unresponsive Wakefulness Syndrome" UWS for the br41n.io Hackathon, Neurotechnology Spring School 2023, April 2023
https://www.br41n.io/Spring-School-2023

# Introduction

The unresponsive wakefulness syndrome (UWS), formerly known as the vegetative state, is one of 
the most dramatic outcomes of acquired brain injury.
Patients with UWS open their eyes spontaneously but demonstrate only 
reflexive behavior; there are no signs of consciousness.

van Erp, W. S., Lavrijsen, J. C., & Koopmans, R. T. (2016). Als het bewustzijn niet meer terugkeert [The unresponsive wakefulness syndrome: Dutch perspectives]. Nederlands tijdschrift voor geneeskunde, 160, D108.


People with complete locked-in syndrome have lost the ability to control
any kind of movement. They can’t speak, move their hands, or even
choose to blink or move their eyes, but the brain is working. Therefore,
communicating with these patients can be very difficult.

![uws](https://user-images.githubusercontent.com/117298723/233794706-83d8b5dd-a5a7-4ad6-b6be-20836b2f017f.png)


# Method Used

Many groups have developed brain–computer interface (BCI) systems that can provide
communication for people even if they cannot move. The BCI system can
translate the user’s brain activity into signals for communication, such as
answering YES or NO. Unfortunately, most of these systems do not work
for patients who cannot see. Here, we introduce new results with a system
that uses little vibrators. The mindBEAGLE system can vibrate the left and
right wrists, and the patient can answer YES or NO by silently counting
the stimulations on one wrist or the other. The system is using the wrist,
because they are easy to distinguish for the patient.

To develop a BCI that is practical for completely locked-in patients, we
decided to use little vibrating devices. In this case, the vibrating device
(like the one in your cell phone that is activated when someone messages
or calls) is placed on the right wrist, another vibrating device is put on the
left wrist, and another one on the patient’s leg. Then,
each of the devices is switched on for a very short time. The important
point now is that we ask the patient to count the number of vibrations in a
certain location, such as the left wrist. When the patient counts the vibrations on the left wrist, this produces a P300, like the P300 from the flashing
characters in Figure 1. Since the patient ignores the vibrations on the right
hand and foot, these vibrations produce much smaller P300s. This allows the BCI system to identify that the patient counted the vibrations on the
left wrist only

![explain](https://user-images.githubusercontent.com/117298723/233794934-aa567e69-904c-4a4a-a2e3-d0204e9ac3a8.png)


https://www.researchgate.net/publication/325565417_How_Can_Completely_Locked-in_Persons_Communicate_With_a_Brain-Computer_Interface

# Data Overview

##       What we have been given

We get eeg signals from 2 idividuals on high and low accuracy on the method recordings.
The data contains also a mat file called target that indicates when the vibrations happened to the target hand (2) , other hand (1) and foot (-1).
![dataoverview](https://user-images.githubusercontent.com/117298723/233794515-2f612fea-c5f4-46cb-be39-8f1e847e426b.png)


The 8 channels that were used are applied to the following brain regions: Fz,C3,C4,Cz,CP1,CP2,CPz, Pz
These are electrode locations used in electroencephalography (EEG) measurements, which record the electrical activity of the brain.

Fz: refers to the "frontal midline" electrode, located on the midline of the forehead, over the frontal lobe of the brain. This area is involved in higher-order cognitive processes such as decision-making, attention, and working memory.

C3 and C4: these electrodes are located on the left and right sides of the scalp, respectively, over the sensorimotor cortex. This area is involved in motor control, sensation, and perception.

Cz: this electrode is located on the midline of the scalp, over the sensorimotor cortex. It is often used as a reference electrode to compare activity at other electrode locations.

CP1, CP2, and CPz: these electrodes are located over the parietal lobe of the brain, which is involved in sensory processing and attention.

Pz: this electrode is located on the midline of the scalp, over the parietal lobe. It is often used as a reference electrode and is involved in visual-spatial processing, attention, and working memory.


![eegch](https://user-images.githubusercontent.com/117298723/233794427-86db8c49-cb2d-4ccd-bb01-7680782daeb4.png)
![montage_mB](https://user-images.githubusercontent.com/117298723/233794475-d92a3050-4c10-4170-bd56-766100f6dc40.png)


We can clearly see that all of these channels play a crucial role in attention which is the main focus of the wanted BCI information. 

# Analysis

## Basic Plotting - Data Overview -

![over high](https://user-images.githubusercontent.com/117298723/233799410-382a2d73-8fd9-4aa1-b64b-105901a86865.png)

![over_zoomed](https://user-images.githubusercontent.com/117298723/233799421-5dd7d18d-ed4f-439d-b887-8e8de74a9119.png)
![channels high](https://user-images.githubusercontent.com/117298723/233799478-4e7610c7-fdfa-4cf5-bb09-463de1f66324.png)
![channels high zommed](https://user-images.githubusercontent.com/117298723/233799483-f032fa1f-88c3-4d81-a89c-7bf1f89f448e.png)
