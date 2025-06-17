%Graph

%1.write the MATHLAB code to import a graph .Use the folloeing source and destination data.
%2.Using the imported data,draw the graph
%3.Write the MATHLAB code to find and display the subgraph for the given nodes
%4.identify and display the adjecent vertices for each nodes
%5.Label the edges of the graph
%6.Label the nodes of the graph
%7.writes  the MATHLAB code to color the graph(graph coloring)
%8.Writes the MATHLAB code to find the shortest path from node 1 to node 5
%source = [1,1,2,3,4]
%destination=[2,3,4,4,5]


clc;
clear;

% 1. Import the graph using source and destination data
source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];

% Create the graph
G = graph(source, destination);

% 2. Draw the graph
figure;
p = plot(G);
title('Original Graph');

% 3. Find and display a subgraph for the given nodes [1, 2, 3]
sub_nodes = [1, 2, 3];
subG = subgraph(G, sub_nodes);

figure;
plot(subG);
title('Subgraph for Nodes 1, 2, 3');

% 4. Identify and display the adjacent vertices for each node
disp('--- Adjacent Vertices ---');
for node = 1:numnodes(G)
    adj = neighbors(G, node);
    fprintf('Node %d is connected to: %s\n', node, mat2str(adj'));
end

% 5. Label the edges of the graph
edgeLabels = strcat(string(G.Edges.EndNodes(:,1)), '→', string(G.Edges.EndNodes(:,2)));
p.EdgeLabel = edgeLabels;

% 6. Label the nodes of the graph
labelnode(p, 1:numnodes(G), 1:numnodes(G));

% 7. Graph Coloring using Greedy Algorithm
n = numnodes(G);
color_assignment = zeros(1, n);
available = true(1, n);

for u = 1:n
    used_colors = color_assignment(neighbors(G, u));
    available(:) = true;
    available(used_colors(used_colors > 0)) = false;
    color_assignment(u) = find(available, 1);
end

% Assign colors and show coloring
cmap = lines(max(color_assignment));
nodeColors = cmap(color_assignment, :);

figure;
p2 = plot(G, 'NodeLabel', 1:n, 'MarkerSize', 7);
for i = 1:n
    highlight(p2, i, 'NodeColor', nodeColors(i, :));
end
title('Graph Coloring');

% 8. Find the shortest path from node 1 to node 5
[startNode, endNode] = deal(1, 5);
[path, dist] = shortestpath(G, startNode, endNode);

fprintf('\n--- Shortest Path from Node %d to Node %d ---\n', startNode, endNode);
fprintf('Path: %s\n', mat2str(path));
fprintf('Distance: %d\n', dist);

% Highlight the shortest path
highlight(p2, path, 'EdgeColor', 'r', 'LineWidth', 2);
highlight(p2, path, 'NodeColor', 'r');