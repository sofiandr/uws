# uws
Draft Rep on "Unresponsive Wakefulness Syndrome" UWS for the br41n.io competition, Sprin School 2023, April 2023
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

![dataoverview](https://user-images.githubusercontent.com/117298723/233794515-2f612fea-c5f4-46cb-be39-8f1e847e426b.png)



![eegch](https://user-images.githubusercontent.com/117298723/233794427-86db8c49-cb2d-4ccd-bb01-7680782daeb4.png)
![montage_mB](https://user-images.githubusercontent.com/117298723/233794475-d92a3050-4c10-4170-bd56-766100f6dc40.png)


# Analysis
