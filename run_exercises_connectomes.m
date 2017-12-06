% Exercise 5

% NB: the characteristic path length is the average of all the pairwise
% shortest paths. However, when the network is disconnected, which usually
% happens for high thresholds, only the non-infinite paths are considered.

% structural connectomes
load('networks\structural_connectomes.mat', 'matrices', 'th')

n = length(matrices);
m = length(th);
D_structural = zeros(n,m);
C_structural = zeros(n,m);
L_structural = zeros(n,m);

for i = 1:n
    for j = 1:m
        x = double(matrices{i} > th(j));
        tm = compute_topological_measures(x,{'avgdeg','clustering','char_path'});
        D_structural(i,j) = tm.avgdeg;
        C_structural(i,j) = tm.clustering;
        L_structural(i,j) = tm.char_path;
    end
end

% functional connectomes
load('networks\functional_connectomes.mat', 'matrices', 'th')

n = length(matrices);
m = length(th);
D_functional = zeros(n,m);
C_functional = zeros(n,m);
L_functional = zeros(n,m);

for i = 1:n
    for j = 1:m
        x = double(matrices{i} > th(j));
        tm = compute_topological_measures(x,{'avgdeg','clustering','char_path'});
        D_functional(i,j) = tm.avgdeg;
        C_functional(i,j) = tm.clustering;
        L_functional(i,j) = tm.char_path;
    end
end