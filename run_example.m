clc; clear;

load('exampleTrussInput.mat');

% Solve truss
[T, lengths] = solveTruss(C, X, Y, Sx, Sy, L);

% Find critical buckling member
[criticalMember, Pcrit] = findCriticalMember(T, lengths);

% Compute cost
cost = computeCost(lengths, size(C,1));

fprintf('Critical member: m%d\n', criticalMember);
fprintf('Buckling strength: %.2f oz\n', Pcrit);
fprintf('Estimated max truss load: %.2f oz\n', Pcrit);
fprintf('Total truss cost: $%.2f\n', cost);
fprintf('Load-to-cost ratio: %.3f oz/$\n', Pcrit / cost);