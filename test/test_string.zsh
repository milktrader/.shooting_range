#! /bin/zsh 

autoload colors; colors
./.dirty_dozen

echo $fg[yellow]String test:$reset_color

OUTPUT=$(../src/C/$Cfile)

if [[ ${OUTPUT} == $Cout ]];
then
	echo $fg[green]$Cstr$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

#if [[ ${OUTPUT} != $Cout ]]
#then
#	echo $fg[green]boom!$reset_color
#
#else
#	echo $fg[red]$FAIL$reset_color
#fi

#echo $Cout
#echo $OUTPUT

OUTPUT_R=$(Rscript ../src/R/$Rfile)

if [[ ${OUTPUT_R} == $Rout ]];
then
	echo $fg[green]$Rstr$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

echo $OUTPUT_R
echo $Rout
