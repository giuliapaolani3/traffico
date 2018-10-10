function Adj = createcitygraph(x, y, p, dtype)
% x is the width of the city
% y is the height of the city
% p is the probability of a link between roads
% dtype specifies the distance type (cityblock 4-connect, chebychev 8-connect)

rng('shuffle');

[X, Y] = meshgrid(1:x, 1:y);
X = X(:);
Y = Y(:);

Adj = squareform(pdist([X, Y], dtype) == 1);
Rem = triu(rand(x*y), 1) < p;
Rem = Rem & Rem';
Adj = Adj & Rem;

return