function [criticalMember, Pcrit_min] = findCriticalMember(T, lengths)

M = length(lengths);
compression = T(1:M);
compression(compression > 0) = 0;

% Buckling model from experimental fit
Pcrit = 3654.533 * lengths.^(-2.119);

% Remove members in tension
Pcrit(compression == 0) = 0;

% Find weakest compressive member
[Pcrit_min, criticalMember] = min(Pcrit(Pcrit > 0));

indices = find(Pcrit > 0);
criticalMember = indices(Pcrit(indices) == Pcrit_min);

end
