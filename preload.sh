#! /bin/bash

echo "Pre-loading a set of docker images"

sudo -- docker pull nginx:alpine
sudo -- docker pull nginx:1.13.0-alpine

sudo -- docker pull mongo:3.4.4
sudo -- docker pull mongo:latest

sudo -- docker pull softinstigate/restheart:3.0.3

sudo -- docker pull openjdk:8-jre-alpine
sudo -- docker pull openjdk:8-jdk-alpine

sudo -- docker pull alpine:3.5



sudo -- docker images
sudo -- df -h
date
