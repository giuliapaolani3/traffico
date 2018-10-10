clear;
close all;
clc;

PCross = 0.8;

City_x = 3;
City_y = 3;

Adj = createcitygraph(City_x, City_y, PCross, 'chebychev')

G = graph(Adj)
plot(G,'EdgeLabel',G.Edges.Weight)




