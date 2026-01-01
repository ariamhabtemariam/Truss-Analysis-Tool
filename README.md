# Truss Analysis Tool – Method of Joints

This project implements a computational truss analysis solver based on the method of joints.  
The tool evaluates arbitrary planar truss geometries, computes internal member forces using equilibrium equations, identifies compression members, and predicts structural failure based on a buckling model derived from experimental data.

## Features
- Solves for member forces using matrix equilibrium equations
- Automatically computes member lengths and direction cosines
- Identifies tension vs compression members
- Predicts first member to buckle using a length-based buckling model
- Estimates maximum truss load and cost
- Validated against hand calculations

## Files
- `run_example.m` – runs the solver on an example truss
- `solveTruss.m` – computes member forces and geometry
- `findCriticalMember.m` – identifies first member to buckle
- `computeCost.m` – computes truss cost
- `exampleTrussInput.mat` – sample truss geometry and loading

## Example Output
- Member forces (tension/compression)
- Critical buckling member
- Maximum supported load
- Load-to-cost ratio

## Limitations
- Linear elastic behavior assumed
- Buckling model based on experimental curve fit
- 2D planar trusses only
