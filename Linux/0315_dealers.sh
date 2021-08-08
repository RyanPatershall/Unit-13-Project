#!/bin/bash

grep -E '05:00:00 AM|08:00:00 AM|02:00:00 PM' 0315_Dealer_schedule | awk '{print $5,$6}' >> Dealers_working_during_losses
