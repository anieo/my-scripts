#!/bin/bash
aws=$AWS_PROFILE
if [ -z "${AWS_PROFILE}" ]; then aws="default"; fi

echo "$aws"
