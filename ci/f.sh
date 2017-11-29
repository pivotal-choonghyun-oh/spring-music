#!/bin/sh

fly -t lite login -c http://192.168.219.102:8088 -u concourse -p changeme

fly -t lite set-pipeline -p shdemo -c ../../p.yml -l ../../cred.yml

