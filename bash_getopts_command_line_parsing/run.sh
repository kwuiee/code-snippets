#!/bin/bash

while getopts s:p:md:r:t: opt
do
    case $opt in
        s)
            opt_s=$OPTARG;;
        p)
            opt_p=$OPTARG;;
        d)
            opt_d=$OPTARG;;
        r)
            opt_r=$OPTARG;;
        t)
            opt_t=$OPTARG;;
		m)
			opt_m=true;;
        '?')
            echo "usage: sh ctdna_report3.sh -s sampleid -p patientid -d projectdir -t paneltype"
    esac
done

if [[ -z $opt_s ]];then
    echo "usage: sh ctdna_report3.sh -s sampleid -p patientid -d projectdir -t paneltype"
    exit
fi

if [ $opt_m ]; then echo fine; fi
