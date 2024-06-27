#! /bin/zsh 

autoload colors; colors
./.dirty_dozen

echo $fg[yellow]String test:$reset_color

if [ -e ../src/C/$Cpath ];
then
	echo $fg[green]$Cstr$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

if [ -e ../src/C/hello ];
then
	echo $fg[green]boom!$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi
