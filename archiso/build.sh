#!/bin/bash

echo "Erasing work directory."
sudo rm -rf work
echo "Building iso, Please wait..."
sudo mkarchiso -v -w work -o out .
echo "Built ISO."
echo "The output ISO can be found in out."