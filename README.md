[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)

# Weighted Mixed Distance
A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach.

Let $\mathfrak{X}^{n \times m}, m:=m_R + m_C$ be a mixed dataset. The Weighted Mixed Distance (WMD) metric is defined as

$\text{WMD}(x_i,x_j) = \frac{1}{m} \left[ w_R \times \sum_{k=1}^{m_R} d_{ijk} + w_C \times \sum_{k=1}^{m_C} d_{ijk} \right]$

where $d_{ij}:=\sqrt{1 - \frac{x_i \cdot x_j}{\|x_i\| \|x_j\|}}$ if $x_{i}$ and $x_{j}$ are numerical and  $d_{ijk}:=\mathbb{I}(x_{i} \neq x_{j})$ if $x_{i}$ and $x_{j}$ are categorical, $w_R$ is the weight of numerical features and $w_C$ is the weight of categorical features.

## References
1. [Von Luxburg, U. (2007). A tutorial on spectral clustering. Statistics and computing, 17, 395-416.](https://link.springer.com/article/10.1007/s11222-007-9033-z)
2. [Zhu, L., Miao, L., & Zhang, D. (2012). Iterative Laplacian score for feature selection. In Pattern Recognition: Chinese Conference, CCPR 2012, Beijing, China, September 24-26, 2012. Proceedings 5 (pp. 80-87). Springer Berlin Heidelberg.](https://link.springer.com/chapter/10.1007/978-3-642-33506-8_11)