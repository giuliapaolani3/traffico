clear;
close all;
clc;

rng('shuffle');
PCross = 0.75;

City_x = 10;
City_y = 10;

distFunc = 'cityblock'; % 4-connect
% distFunc = 'chebychev'; % 8-connect

[X, Y] = meshgrid(1:City_x, 1:City_y);
X = X(:);
Y = Y(:);

Adj = squareform(pdist([X, Y], distFunc) == 1);
Rem = triu(rand(City_x*City_y), 1) < PCross;
Rem = Rem & Rem';
Adj = Adj & Rem;

subplot(121), spy(Adj)

[xx yy] = gplot(Adj, [X Y]);
subplot(122), plot(xx, yy, 'ks-', 'MarkerFaceColor','r')
axis([0 City_x+1 0 City_y+1])
%# add labels
[X Y] = meshgrid(1:City_x,1:City_y);
X = reshape(X',[],1) + 0.1; Y = reshape(Y',[],1) + 0.1;
text(X, Y(end:-1:1), cellstr(num2str((1:City_x*City_y)')) )

% G = graph(Adj);
% plot(G);
% imagesc(Adj);

% y = floor(randfixedsum(NRoads, 1, NCars, 0, NCars))








