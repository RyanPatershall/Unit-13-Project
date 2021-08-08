#!/bin/bash

grep -E "$1" "$2"_Dealer_schedule | awk '{print $5,$6}' 
