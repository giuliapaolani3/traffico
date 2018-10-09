clear;
close all;
clc;

rng('shuffle');

% Nroads = 5;
% Pcross = 0.08;
% 
% Adj = sparse(zeros(Nroads));
% 
% Adj = triu(rand(Nroads), 1);
% Adj = Adj > 1-Pcross;
% Adj = Adj | Adj';
% 
% figure
% imagesc(Adj)
% colorbar

% Adj = [[0, 1, 0, 0, 1],
%     [1, 0, 1, 1, 0],
%     [0, 1, 0, 1, 0],
%     [0, 1, 1, 0, 1],
%     [1, 0, 0, 1, 0]]
% 
% G = graph(Adj)
% 
% plot(G)

NRoads = 100;
CitySize = sqrt(NRoads);

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
