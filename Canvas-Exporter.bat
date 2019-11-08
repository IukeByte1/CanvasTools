@echo off
:start
echo Select type of export:
echo =============
echo -
echo 1) Discussion Export
echo 2) Exit
set /p exporter= 
if "%exporter%"=="1" goto discussion
if "%exporter%"=="2" goto exit
:discussion
cls
echo Canvas Discussion Exporter By Luke F. (C 2019)
echo Note: Remove the "while(1);" header and you will be able to work with the output in JSON.
echo Note: The * marks the part of the URL that you are looking for.
set /p school=Enter School Name (*SchoolName*.instructure.com): 
set /p course=Enter Course ID (SchoolName.instructure.com/courses/*CourseID*): 
set /p discussion=Enter Discussion ID (SchoolName.instructure.com/courses/CourseID/discussion_topics/*DiscussionID*): 
start "" https://%school%.instructure.com/api/v1/courses/%course%/discussion_topics/%discussion%/view?include_new_entries=1
echo Done! Right click and then press "Save As..." to download the .json.
pause
goto exit
:exit
exit