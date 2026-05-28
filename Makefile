PROJECT = compare_heapsort_quicksort raw-output swapstats swap_comparison_heap_quick.png


project: ${PROJECT}
	echo "creating project"

compare_heapsort_quicksort: compare_heapsort_quicksort.c
	gcc compare_heapsort_quicksort.c -o compare_heapsort_quicksort

raw-output: compare_heapsort_quicksort
	./compare_heapsort_quicksort > raw-output

swapstats: raw-output
	/usr/bin/cut -d' ' -f1,7,4 raw-output > swapstats

swap_comparison_heap_quick.png: raw-output swapgnuplotbatch
	gnuplot -c swapgnuplotbatch

clean:
	/bin/rm -f ${PROJECT}
