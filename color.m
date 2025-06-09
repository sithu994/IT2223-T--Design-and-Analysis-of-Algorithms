s = [1 1 2 3 4];
t = [2 3 4 4 5];
G = graph(s,t);

nodeColours = [
    1 0 0; % Node 1 - red
    0 1 0; % Node 2 - green
    0 0 1; % Node 3 - blue
    1 1 0; % Node 4 - yellow
    1 0 1; % Node 5 - magenta
];

plot(G, 'NodeColor', nodeColours, 'LineWidth', 1.5);
