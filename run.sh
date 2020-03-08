#!/bin/bash


help()
{
    echo
    echo "============================================"
    echo "================ Miss  Args ================"
    echo "============================================"
    echo "Run Gitea      : ./run.sh gitea [start/stop]"
    echo "Run Drone      : ./run.sh drone [start/stop]"
    echo "============================================"
    echo 
    exit 1
}

run()
 {

    if [ $2 == 'start' ] ;then
        echo "start $1"
        cd $1
        docker-compose up -d 
        exit 0
    fi

    if [ $2 == 'stop' ] ;then
        echo "stop $1"
        cd $1
        docker-compose down
        exit 0
    fi
    help
 }

if [ ! -n "$1" -o ! -n "$2" ] ;then
    help
fi

run $1 $2
