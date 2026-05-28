# Swap Count Comparison between Heap Sort VS Quick Sort

One can clearly see quicksort is much, much faster than
heapsort on random data.  In the code, I had to call my function
`qqsort` to avoid colliding with the standard gnu qsort()
function.

Requires gcc, make, the unix utility `cut`,  and gnuplot.

## Results

 ![swap_results](https://github.com/zettix/compare_heapsort_quicksort/blob/main/swap_comparison_heap_quick.png)
