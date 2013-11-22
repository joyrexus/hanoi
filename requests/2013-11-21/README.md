## Summary 

The `report.tsv` file contains info about the gesture windows of interest (WOIs) within the provided gesture sample (`data.json`).

The `windows.tsv` file (derived from the annotations in `anno.tsv`) contains the timing info for the WOIs.  This timing info was used by the `extract.coffee` script to generate `report.tsv`.

Note that the second and fourth window are missing gesture info.  I'm not sure
why, but Gwendolyn's annotation file (`anno.tsv`) has the comment "missing
gesture" for both of these windows in the `COMMENT` column.


## Files

* `data.json` - gesture sample (originally `1TOHF_100_EXP1.CONVERTED.json`)
* `anno.tsv` - annotation file (originally `1TOHF_100_EXP1.xlsx`)
* `windows.tsv` - timing data for each window (taken from `anno.tsv`)
* `report.tsv` - timing data for each window (taken from `anno.tsv`)
* `extract.coffee` - script used to extract window info from `data.json`


## Request

    Subject: gesture windows for velocity extraction
    Date: November 20, 2013 at 2:25:21 PM CST

    Here are the gesture windows from the fake gesture data as well
    as the gesture sample .json file.

    The excel file has the real start and end time of the gesture.

    I believe we need position, velocity, and acceleration data.
