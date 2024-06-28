#!/bin/bash

data1=("Santiago" "Barcelona" "AWG" "6792992" "Male")
data2=("Santi" "Texas" "BGG" "6792992" "Male")
data3=("Tiago" "Rio" "GHA" "6792992" "Female")

datacol=("data1" "data2" "data3")

for arrayName in "${datacol[@]}"; do
  declare -n array="$arrayName"
  echo "The second element of the array '$arrayName' is: ${array[1]}"
done
