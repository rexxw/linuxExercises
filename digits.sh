#!/bin/bash

for i in {1000..2000}; do
  if [[ $i =~ ^[01]+$ ]]; then
    echo $i
  fi
done

