#!/bin/bash
if [ "$#" -ne 1 ]; then
  kind create cluster
else
  kind create cluster -n "$1"
fi



