#!/bin/bash

for i in {1000..2000}; do
  if [[ $i =~ ^[01]+$ ]]; then
    sum=$(($sum+ $i))
  fi
done

echo "sum equals: $sum"


