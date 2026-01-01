% Example truss input file
% 7 joints, 11 members (same structure as your report)

% Joint coordinates (in inches)
X = [0 5 10 15 20 25 31];
Y = [0 5 4 5 4 5 0];

% Connection matrix (J x M)
C = [
% m1 m2 m3 m4 m5 m6 m7 m8 m9 m10 m11
  1  0  0  0  0  0  0  0  1  0  0;
  1  1  0  0  0  0  0  0  0  0  0;
  0  1  1  0  0  0  0  0  0  1  0;
  0  0  1  1  0  0  0  0  0  0  0;
  0  0  0  1  1  0  0  0  0  0  1;
  0  0  0  0  1  1  0  0  0  0  0;
  0  0  0  0  0  1  1  1  0  0  0
];

% Support reaction matrices
Sx = [1; 0; 0; 0; 0; 0; 0];
Sy = [1 0;
      0 0;
      0 0;
      0 0;
      0 0;
      0 0;
      0 1];

% Load vector (oz)
L = zeros(2*length(X) + 3,1);
L(2*3) = -32;   % downward load at joint 3

save('exampleTrussInput.mat','C','X','Y','Sx','Sy','L');