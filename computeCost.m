function cost = computeCost(lengths, numJoints)

C_joint = 10;
C_length = 1;

cost = C_joint * numJoints + C_length * sum(lengths);

end
