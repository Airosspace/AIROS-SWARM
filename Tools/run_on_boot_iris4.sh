#!/bin/bash
# IMPORTANT: Path has to be absolute path.

path="/home/iris4/Log/";
if [ ! -d $path ]; then mkdir $path; fi;

today=`date '+%Y%m%d_%H-%M-%S'`;
filename="stderr_FlightLog_iris4_$today.txt";
path_filename=$path$filename;
python /home/iris4/iris_code/balloon_finder_follower.py > $path_filename 2>&1;



