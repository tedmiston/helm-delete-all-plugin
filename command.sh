#!/usr/bin/env bash

helm list --all --short | xargs -L1 helm delete --purge
