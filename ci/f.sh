#!/bin/sh

fly -t lite login -c http://60.93.213.81:8088 -u concourse -p changeme

fly -t lite set-pipeline -p shdemo -c ../../p.yml -l ../../cred.yml

