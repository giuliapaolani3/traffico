clear;
close all;
clc;

PCross = 0.8;

City_x = 7;
City_y = 7;

Adj = createcitygraph(City_x, City_y, PCross, 'chebychev')

G = graph(Adj)
plot(G)




