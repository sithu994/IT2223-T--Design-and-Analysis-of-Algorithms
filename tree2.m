nodes = {'A','B','C','D','E','F','G'};

%define edges using the sourse and target nodes
s=[1 1 2 2 3 3];
t=[2 3 4 5 6 7];

%define the weight
weights = [5 3 2 4 6 1];

G=digraph(s,t,weights,nodes);

%plot the tree
plot(G,'Layout','layered','Direction','down','EdgeLabel',G.Edges.Weight);
title('Simple tree with Level 3')