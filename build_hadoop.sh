#!/bin/bash

# this script re-build hadoop2.0 use maven.
# src_dir is the root dir of hadoop. 
# user can build hdfs or yarn respectively with a parameter
# or build all by default
# e.g. ./bulid_hadoop hdfs

src_dir="${HOME}/hadoop-dev"

COMMAND=$1

if [ "$COMMAND" = "hdfs" ]; then
    cd ${src_dir}/hadoop-hdfs-project/hadoop-hdfs/
elif [ "$COMMAND" = "common" ]; then
    cd ${src_dir}/hadoop-common-project/hadoop-common/
elif [ "$COMMAND" = "yarn" ]; then
    cd ${src_dir}/hadoop-yarn-project
else
    cd ${src_dir}
fi

mvn package -Pdist -DskipTests -Dtar
