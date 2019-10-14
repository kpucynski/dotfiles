#!/bin/bash

curl -u karol.pucynski -X POST -F "jenkinsfile=<Jenkinsfile" http://jenkins:8080/pipeline-model-converter/validate
