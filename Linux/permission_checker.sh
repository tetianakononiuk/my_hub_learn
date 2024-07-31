#!/bin/bash
#
FILE_LIST=$(ls -p /opt/310524-ptm | grep -v /)

for FILE in $FILE_LIST
do
	if [[ "$FILE" == *.sh ]]; then
		chmod +x "/opt/310524-ptm/$FILE"
		echo "Добавлены права на исполнения для файла: $FILE"
	fi
done

echo "Права на исполнения успешно добавлены!" 

