[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)]()
[![Best Paper Award](https://img.shields.io/badge/Best%20Paper%20Award-🏆-brightgreen)]()

# Weighted Mixed Distance (WMD) [`[paper]`](https://ieeexplore.ieee.org/document/11167150)

**Paper title: A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach**

This repository presents the **Weighted Mixed Distance (WMD)** metric, an approach for clustering datasets containing both numerical and categorical features. WMD improves clustering quality by adjusting feature influence using a graph-based unsupervised method.

## Example of use
MATLAB code `wmd(points, W_R, W_C)` function returns $n \times n$ symmetric matrix.
```m
[weightNumerical, weightCategorical] = getweights(points);
D = wmd(points, weightNumerical, weightCategorical);
disp(D);
```

## Cite as
```bibtex
@INPROCEEDINGS{11167150,
  author={Pyae, Aung and Low, Yeh-Ching and Chua, Hui Na},
  booktitle={2025 IEEE 7th Symposium on Computers & Informatics (ISCI)}, 
  title={A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach}, 
  year={2025},
  volume={},
  number={},
  pages={59-64},
  keywords={Measurement;Couplings;Laplace equations;Data analysis;Clustering methods;Indexes;Informatics;Unsupervised learning;Information integrity;clustering;similarity measure;mixed data;unsupervised learning},
  doi={10.1109/ISCI65687.2025.11167150}}
```
