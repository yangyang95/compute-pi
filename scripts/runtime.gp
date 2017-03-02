reset
set xlabel 'N'
set ylabel 'time(sec)'
set grid
set title 'Comput pi time'
set term png enhanced font 'Verdana,10'
set datafile separator ','
set output 'runtime.png'

plot [:20100][:]'result_clock_gettime.csv' using 1:2 smooth csplines title 'baseline' lw 3, \
'' using 1:3 smooth csplines title 'openmp2' lw 3, \
'' using 1:4 smooth csplines title 'openmp4' lw 3, \
'' using 1:5 smooth csplines title 'avx' lw 3, \
'' using 1:6 smooth csplines title 'avxunroll' lw 3, \
'' using 1:7 smooth csplines title 'MonteCarlo' lw 3