set term png size 600,500

set grid

set ylabel "solution en fonction du pas"

set xlabel "pas de temps "

plot "EX_SOL.dat" w lp title "Solution exacte "
