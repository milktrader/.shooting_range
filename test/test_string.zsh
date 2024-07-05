#! /bin/zsh 

############ init
autoload colors; colors
source .dirty_dozen

echo ""
echo $fg[yellow]String test:$reset_color
echo ""

############ c
OUTPUT=$(../src/C/$Cfile) 
if [[ ${OUTPUT} == $Cout ]]; 
then 
	echo $fg[green]$PASS$reset_color 
else 
	echo $fg[red]$FAIL$reset_color 
fi 

############# r 
OUTPUT=$(Rscript ../src/R/$Rfile) 
if [[ ${OUTPUT} == $Rout ]]; 
then 
	echo $fg[green]$PASS$reset_color 
else 
	echo $fg[red]$FAIL$reset_color 
fi

############# assembly
OUTPUT=$(../src/assembly/$Afile) 
if [[ ${OUTPUT} == $Aout ]]; 
then 
	echo $fg[green]$PASS$reset_color 
else 
	echo $fg[red]$FAIL$reset_color 
fi

############# clojure 
OUTPUTc=$(lein run ../src/clojure/$Clfile/src/$Clfile)
if [[ ${OUTPUTc} == $Clout ]]; 
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# fortran
OUTPUT=$(../src/fortran/$Ffile)

if [[ ${OUTPUT} == $Fout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# haskell
OUTPUT_h=$(../src/haskell/$Hfile)

if [[ ${OUTPUT_h} == $Hout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# julia
OUTPUT_j=$(../src/julia/$Jfile)

if [[ ${OUTPUT_j} == $Jout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# prolog
OUTPUT=$(../src/prolog/$Prfile)

if [[ ${OUTPUT} == $Prout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# python
OUTPUT_p=$(../src/python/$Pyfile)

if [[ ${OUTPUT_p} == $Pyout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# ruby
OUTPUT=$(../src/ruby/$Rbfile)

if [[ ${OUTPUT} == $Rbout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# rust
OUTPUT=$(../src/rust/$Rufile)

if [[ ${OUTPUT} == $Ruout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############# shell
OUTPUT=$(../src/shell/$Sfile)

if [[ ${OUTPUT} == $Sout ]];
then
	echo $fg[green]$PASS$reset_color

else
	echo $fg[red]$FAIL$reset_color
fi

############ test of the test lines

echo ""
echo $OUTPUTc
echo $Clout
