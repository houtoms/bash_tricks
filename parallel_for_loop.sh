#!/bin/bash

LOOP_SIZE=20

for i in $(seq 0 $LOOP_SIZE); do
  {
    SLEEP_TIME=$RANDOM
    let "SLEEP_TIME %= 15" # You can sleep up to 15 sec
    echo Loop-$i starts to sleep for $SLEEP_TIME sec
    sleep $SLEEP_TIME
    echo Loop-$i wakes up
  } &
done

wait

echo "All tasks are done"
