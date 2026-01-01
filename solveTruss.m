function [T, lengths] = solveTruss(C, X, Y, Sx, Sy, L)

[J, M] = size(C);
xUnits = zeros(J,M);
yUnits = zeros(J,M);
lengths = zeros(1,M);

for joint = 1:J
    for member = 1:M
        if C(joint,member) == 1
            otherJoint = find(C(:,member)==1 & (1:J)'~=joint);
            dx = X(otherJoint) - X(joint);
            dy = Y(otherJoint) - Y(joint);
            Lm = sqrt(dx^2 + dy^2);

            xUnits(joint,member) = dx / Lm;
            yUnits(joint,member) = dy / Lm;
            lengths(member) = Lm;
        end
    end
end

A = [xUnits Sx; yUnits Sy];
T = A \ L;

end