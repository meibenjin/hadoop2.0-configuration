#!/bin/bash
src_dir="${HOME}/hadoop-dev"
hadoop_dir="${HOME}/hadoop"
if [ ! -d "$hadoop_dir" ]; then
    mkdir $hadoop_dir
fi

hadoop_common="${src_dir}/hadoop-common-project/hadoop-common/target/hadoop-common-3.0.0-SNAPSHOT"
hadoop_hdfs="${src_dir}/hadoop-hdfs-project/hadoop-hdfs/target/hadoop-hdfs-3.0.0-SNAPSHOT"
hadoop_yarn="${src_dir}/hadoop-yarn-project/target/hadoop-yarn-project-3.0.0-SNAPSHOT"

cd ${hadoop_dir} 
echo "change directory to "${hadoop_dir}

if [ -d ${hadoop_dir} ]; then
    rm ${hadoop_dir}/* -rf
fi

if [ -d ${hadoop_common} ]; then
    cp ${hadoop_common}/* ${hadoop_dir}/ -rf
    echo 'copy hadoop common project'
fi

if [ -d ${hadoop_hdfs} ]; then
    cp ${hadoop_hdfs}/* ${hadoop_dir}/ -rf
    echo 'copy hadoop hdfs project'
fi
if [ -d ${hadoop_yarn} ]; then
    cp ${hadoop_yarn}/* ${hadoop_dir}/ -rf
    echo 'copy hadoop yarn project'
fi
