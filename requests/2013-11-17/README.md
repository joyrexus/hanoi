# TOHF

Kensy and Gwendolyn would like to extract velocity data from the Leap data files that have been collected for the Tower of Hanoi experiment (TOHF).

That is, they would like to obtain the vertical velocity of the hand movements made within certain "windows of interest" (WOI).  

The timing for these windows are indicated in `anno.tsv`.  Each row in this file indicates the start and end point of a particular gesture of interest.

The `anno.tsv` file contains the following columns:

* subj - subject
* explain - explanation
* folder - folder containing the data file
* file - data file containing the WOI
* begin - start time of window
* end - end time of window
* gesture - gesture type
* disk - disk transferred
* hands - hands used in gesture
* distance - distance moved

Note that we simplified the naming of the leap data files.  For example, 
`data/1TOHF_05/1TOHF_05_exp1-1.json` is now `data/5/1-1.json`.


## To Do

The values in the `begin` and `end` columns are given in `mm:ss.ms` format
(minutes:seconds.milliseconds).  We need to find the corresponding timestamps
(given in milliseconds) in the relevant data file.


---

From: Kensy Cooperrider <kensy@uchicago.edu>
Subject: let the data mining begin!
Date: October 10, 2013 3:29:42 PM CDT
To: Jason Voigt <jvoigt@uchicago.edu>
Cc: Gwendolyn Sandobe <gmsand7@gmail.com>

Gwendolyn has been doing piloting on the Leap version of the Tower of Hanoi experiment — in our parlance, the experiment is called TOHF — and we think we are at a place where it might be useful to have your help in extracting the relevant velocity data from the Leap data files we have been collecting. 

Would you be available soon to help us start extracting data? Just as a refresher, what we would like to extract is the velocity information, along the Y axis only, about people's gestures. Gwendolyn has gone through and identified the WOIs (windows of interest) and we have them and the spreadsheet; we also have the corresponding Leap (.json) files. I could make a Dropbox folder and share it with you and Gwendolyn.

I'm going to go ahead and put the .json files in Dropbox folder and share it with you. There will also be an excel sheet, with each row indicating a gesture of interest. The start and end of the window are given in the highlighted columns.
