clear;
close all;
clc;

rng('shuffle');

NRoads = 49;
CitySize = sqrt(NRoads);

NCars = 30;

PCross = 0.8;

Adj = zeros(NRoads);

for i = 1:NRoads
    for j = i+1:NRoads
    
    x = rand;
    if ismember(j, [i+1, i+CitySize, i+CitySize+1]) && x < PCross
        
        Adj(i, j) = 1;
    end;
    
    end;
end;

Adj = Adj | Adj';

G = graph(Adj);
plot(G)
