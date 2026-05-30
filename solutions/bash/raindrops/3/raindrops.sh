#!/usr/bin/env bash

div=false

if (( $1 % 3 == 0 ));
then
    echo -n Pling 
    div=true
fi 

if (( $1 % 5 == 0 ));
then
    echo -n Plang 
    div=true
fi 

if (( $1 % 7 == 0 ));
then
    echo -n Plong 
    div=true
fi 

if !((div));
then
    echo $1
else
    echo 
fi
