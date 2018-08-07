#!/bin/sh

BASEDIR=`echo $(cd $(dirname $0) && pwd)`

for folder in $(find . -type d -maxdepth 1 | grep -Ev '^\.(\/\.git|$)'); do 
	binary_name=$(echo $folder | sed -e 's|^\.\/||g')
	target=$(echo "${folder}/.gitignore")

	grep ${binary_name} ${target} > /dev/null 2>&1
	if [ $? -ne 0 ]; then
		echo "${binary_name}" >> ${target}
		echo "apended ${binary_name} for ${target}"
	fi
done

echo "finished script"

