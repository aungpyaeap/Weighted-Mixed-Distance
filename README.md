[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)

# Weighted Mixed Distance
A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach.

Let data points
$\mathfrak{X} = \{x_i \in \mathbb{R}^m \mid i=1,2,\cdots,n\}$, $m:=m_R + m_C$ be a mixed dataset. The Weighted Mixed Distance (WMD) metric is defined as

![Weighted Mixed Distance](wmd-distance-formula.svg)

where $w_R$ is the weight of numerical features and $w_C$ is the weight of categorical features.

## References
1. [Von Luxburg, U. (2007). A tutorial on spectral clustering. Statistics and computing, 17, 395-416.](https://link.springer.com/article/10.1007/s11222-007-9033-z)
2. [Zhu, L., Miao, L., & Zhang, D. (2012). Iterative Laplacian score for feature selection. In Pattern Recognition: Chinese Conference, CCPR 2012, Beijing, China, September 24-26, 2012. Proceedings 5 (pp. 80-87). Springer Berlin Heidelberg.](https://link.springer.com/chapter/10.1007/978-3-642-33506-8_11)