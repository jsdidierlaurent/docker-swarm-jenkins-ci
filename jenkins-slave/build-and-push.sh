#!/bin/bash
base_path=`pwd`
project_path=$1
project=`basename $project_path`
username="jsdidierlaurent"

cd $project_path
docker build -t "${username}/${project}:latest" .
docker push "${username}/${project}"
cd $base_path