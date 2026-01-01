# Truss Analysis Tool – Method of Joints

This project implements a computational truss analysis solver based on the **method of joints**.  
The tool evaluates arbitrary planar truss geometries, computes internal member forces using equilibrium equations, identifies compression members, and predicts structural failure based on a buckling model derived from experimental data.

---

## Features
- Solves for member forces using matrix equilibrium equations
- Automatically computes member lengths and direction cosines
- Identifies tension vs. compression members
- Predicts first member to buckle using a length-based buckling model
- Estimates maximum truss load and cost
- Validated against hand calculations

---

## Files
- `run_example.m` – Runs the solver on an example truss
- `solveTruss.m` – Computes member forces and geometry
- `findCriticalMember.m` – Identifies first member to buckle
- `computeCost.m` – Computes truss cost
- `exampleTrussInput.mat` – Sample truss geometry and loading

---

## Example Output
- **Member forces**: Displays each member as tension or compression  
- **Critical member**: Shows which member will buckle first  
- **Max load**: Estimated maximum supported load  
- **Load-to-cost ratio**: Efficiency metric for the truss  

> Note: You can view sample output in MATLAB after running `run_example.m`.

---

## Limitations
- Assumes linear elastic behavior  
- Buckling model based on experimental curve fit  
- Only supports 2D planar trusses

---

## Usage
1. Open MATLAB and navigate to the project folder.  
2. Run `run_example.m` to see the solver in action with the example input.  
3. To analyze a custom truss:
   - Create your own input `.mat` file with joint coordinates, connections, supports, and loads.
   - Call `solveTruss` with your input data.  
4. Use `findCriticalMember` to identify the first member that may buckle.  
5. Use `computeCost` to estimate total truss cost and load-to-cost ratio.
