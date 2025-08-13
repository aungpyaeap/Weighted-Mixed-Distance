[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)]()
[![Best Paper Award](https://img.shields.io/badge/Best%20Paper%20Award-🏆-brightgreen)]()

# Weighted Mixed Distance (WMD) [`[paper]`](https://github.com/aungpyaeap)

**Paper title: A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach**

This repository presents the **Weighted Mixed Distance (WMD)** metric, an approach for clustering datasets containing both numerical and categorical features. WMD improves clustering quality by adjusting feature influence using a graph-based unsupervised method.

## Example of use
MATLAB code `wmd(X, W_R, W_C)` function returns $n \times n$ symmetric matrix.
```m
dataPoints = readtable('medical-insurance.csv', VariableNamingRule='preserve');
[weightNumerical, weightCategorical] = getweights(dataPoints);
DIST = wmd(dataPoints, weightNumerical, weightCategorical);
disp(DIST);
```

## Cite as
```bibtex
@INPROCEEDINGS{10730392,
  author={Pyae, Aung and Low, Yeh-Ching and Chua, Hui Na},
  booktitle={2024 IEEE International Conference on Artificial Intelligence in Engineering and Technology (IICAIET)}, 
  title={A Combined Distance Metric Approach with Weight Adjustment For Improving Mixed Data Clustering Quality}, 
  year={2024},
  volume={},
  number={},
  pages={183-188},
  keywords={Measurement;Refining;Clustering algorithms;Learning (artificial intelligence);Complexity theory;Optimization;Distance Metrics;Mixed Data;Hierarchical Clustering;Unsupervised Learning},
  doi={10.1109/IICAIET62352.2024.10730392}
}
```
