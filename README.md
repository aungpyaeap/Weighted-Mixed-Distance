[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)

# Weighted Mixed Distance [`[paper]`](https://github.com/aungpyaeap)
A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach.

Let $\mathfrak{X}^{n \times m}, m:=m_R + m_C$ be a mixed dataset. The Weighted Mixed Distance (WMD) metric is defined as

$d(x_i,x_j) = \frac{1}{m} w_R \times \sum_{k=1}^{m_R} d_{ijk} + w_C \times \sum_{k=1}^{m_C} d_{ijk}$

where $d_{ijk}:=\sqrt{1 - \frac{x_i \cdot x_j}{\Vert x_i\Vert \Vert x_j\Vert}}$ if $x_{i}$ and $x_{j}$ are numerical and $d_{ijk}:=\mathbb{I}(x_{i} \neq x_{j})$ if $x_{i}$ and $x_{j}$ are categorical, $w_R$ is the weight of numerical features and $w_C$ is the weight of categorical features.

WMD satisfies the following conditions for any three data points $(x_i,x_j,x_k)$.
1. $\forall x_i \neq x_j, d(x_i,x_j) > 0, d(x_i,x_i) = 0$
2. $d(x_i,x_j) = d(x_j,x_i)$
3. $\forall x_k, d(x_i, x_j) \leq d(x_i, x_k) + d(x_k, x_j)$

## Usage
MATLAB code `wmd(X, W_R, W_C)` function returns $n \times n$ symmetric matrix.
```m
dataPoints = readtable('synthetic-mixed-sample.csv', VariableNamingRule='preserve');
epsilon = 0.5;
[weightNumerical, weightCategorical] = getweights(dataPoints, epsilon);
DIST = wmd(dataPoints,weightNumerical, weightCategorical);
disp(DIST);
```

## Citation
Pyae, A., Low, Y. C., & Chua, H. N. (2024, August). A Combined Distance Metric Approach with Weight Adjustment For Improving Mixed Data Clustering Quality. In 2024 IEEE International Conference on Artificial Intelligence in Engineering and Technology (IICAIET) (pp. 183-188). IEEE.
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

## References
1. [Von Luxburg, U. (2007). A tutorial on spectral clustering. Statistics and computing, 17, 395-416.](https://link.springer.com/article/10.1007/s11222-007-9033-z)
2. [Zhu, L., Miao, L., & Zhang, D. (2012). Iterative Laplacian score for feature selection. In Pattern Recognition: Chinese Conference, CCPR 2012, Beijing, China, September 24-26, 2012. Proceedings 5 (pp. 80-87). Springer Berlin Heidelberg.](https://link.springer.com/chapter/10.1007/978-3-642-33506-8_11)