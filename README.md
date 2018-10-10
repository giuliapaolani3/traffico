# Traffico - Simulazione di Traffico su Differenti Layout Possibili

Progetto per l'esame di Reti Complesse.

## Descrizione

Si è deciso di usare i nodi come incroci e le strade come link, in questo
modo si avrà passivamente l'algoritmo shortestpath in MATLAB. I weights
delle strade saranno da usarsi come lunghezza di queste mentre per indicare
la quantità massima di auto su una strada si potrebbe usare un'altra
matrice (non necessariamente simmetrica) che aggiungerà dei custom
parameters agli edges.