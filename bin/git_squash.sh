#!/bin/bash

if [ $# == 0 ]; then
	SKIP=2;
else
	SKIP=$1
fi;

git rebase -i HEAD~$SKIP

