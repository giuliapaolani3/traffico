clear;
close all;
clc;

PCross = 0.75;

City_x = 2;
City_y = 5;

Crosses = City_x*City_y;

Adj = createcitygraph(City_x, City_y, PCross, 'chebychev');

% G = graph(Adj)
% plot(G,'EdgeLabel',G.Edges.Weight)

CarsDistro_in = zeros(1, Crosses);
CarsDistro_fin = zeros(1, Crosses);
CarsDistro_in(1) = 1000;

for j = 1:100

    for i = 1:Crosses

        Nodes = find(Adj(i, 1:end));
   
        while CarsDistro_in(i) > 0
       
            GoToNode = Nodes(randi(length(Nodes), 1));
            CarsDistro_in(i) = CarsDistro_in(i) - 1;
            CarsDistro_fin(GoToNode) = CarsDistro_fin(GoToNode) + 1;
            
        end
            
    end
    
    CarsDistro_in = CarsDistro_fin
    CarsDistro_fin = zeros(1, Crosses);
    
end