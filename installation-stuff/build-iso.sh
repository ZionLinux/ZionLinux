#!/bin/bash

function goto
{
    label=$1
    cmd=$(sed -n "/^:[[:blank:]][[:blank:]]*${label}/{:a;n;p;ba};" $0 | 
          grep -v ':$')
    eval "$cmd"
    exit
}

goto "menu"

: menu

echo "Build the Zion Linux ISO"
echo ""
echo "Please select a option."
echo ""
echo "1: Build ISO" 
echo "2: Exit."

read input

if [ $input == "1" ] ;
then
	clear
	echo "You have inputted one. This is the build iso option."
	echo "Jumping to \"Build ISO\"."
	goto "build"
elif [ $input == "2" ] ;
then
	clear
	exit
else
	clear
	echo "The command that was inputted doesn't exist."
	echo "Returning to main menu."
	goto "menu"
fi

: build

cd ..
echo "Erasing work directories."
sudo rm -rf //zion
sudo rm -rf //archiso
echo "Building iso, Please wait..."
sudo mkarchiso -w //zion -o /archiso archiso/
echo "Built ISO."
echo "The output ISO can be found in //archiso."
echo "Going back to menu."
cd installation-stuff
goto "menu"


