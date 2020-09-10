#!/bin/bash

echo --------------------Khelaw starts------------------------
path=$(pwd)
while read gitLink
do
	cd $path
	echo " Cloning $gitLink"
	arr=(` echo $gitLink | tr '/' ' ' ` )
	appPath="${path}/${arr[3]}"
	echo $appPath
	git clone $gitLink
	cd $appPath
	git log > ../${arr[3]}_log.txt
	rm -rf $appPath
done < links.txt
echo --------------------Khelaw ends------------------------