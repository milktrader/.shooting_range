#! /bin/zsh

OUTPUT=$(./bullseye)
echo "${OUTPUT}"


if [[ ${OUTPUT} == "Bullseye!" ]]; then
	echo "yay"
else
	echo "boo"
fi
