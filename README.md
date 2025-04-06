[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](https://github.com/dwyl/esta/issues)

# Weighted Mixed Distance
A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach.

Let $\mathfrak{X}^{n \times m}, m:=m_R + m_C$ be a mixed dataset. The Weighted Mixed Distance (WMD) metric is defined as
<img align="center" src="https://i.upmath.me/svg/%0A%5Ctext%7BWMD%7D(x_i%2Cx_j)%20%3D%20%5Cfrac%7B1%7D%7Bm%7D%20%5Cleft%5B%20w_R%20%5Ctimes%20%5Csum_%7Bk%3D1%7D%5E%7Bm_R%7D%20d_%7Bijk%7D%20%2B%20w_C%20%5Ctimes%20%5Csum_%7Bk%3D1%7D%5E%7Bm_C%7D%20d_%7Bijk%7D%20%5Cright%5D%2C%5C%5C%0Ad_%7Bijk%7D%20%3A%3D%20%0A%5Cbegin%7Bcases%7D%0A%5Csqrt%7B1%20-%20%5Cfrac%7Bx_i%20%5Ccdot%20x_j%7D%7B%5C%7Cx_i%5C%7C%20%5C%7Cx_j%5C%7C%7D%7D%20%26%20%5Ctext%7Bif%20%24x_%7Bik%7D%24%20and%20%24x_%7Bjk%7D%24%20are%20numerical%7D%20%5C%5C%0A0%20%26%20%5Ctext%7Bif%20%24x_%7Bik%7D%20%3D%20x_%7Bjk%7D%24%20(categorical)%7D%20%5C%5C%0A1%20%26%20%5Ctext%7Bif%20%24x_%7Bik%7D%20%5Cneq%20x_%7Bjk%7D%24%20(categorical)%7D%0A%5Cend%7Bcases%7D%0A" alt="
\text{WMD}(x_i,x_j) = \frac{1}{m} \left[ w_R \times \sum_{k=1}^{m_R} d_{ijk} + w_C \times \sum_{k=1}^{m_C} d_{ijk} \right],\\
d_{ijk} := 
\begin{cases}
\sqrt{1 - \frac{x_i \cdot x_j}{\|x_i\| \|x_j\|}} &amp; \text{if $x_{ik}$ and $x_{jk}$ are numerical} \\
0 &amp; \text{if $x_{ik} = x_{jk}$ (categorical)} \\
1 &amp; \text{if $x_{ik} \neq x_{jk}$ (categorical)}
\end{cases}
" />
where $w_R$ is the weight of numerical features and $w_C$ is the weight of categorical features.

## References
1. [Von Luxburg, U. (2007). A tutorial on spectral clustering. Statistics and computing, 17, 395-416.](https://link.springer.com/article/10.1007/s11222-007-9033-z)
2. [Zhu, L., Miao, L., & Zhang, D. (2012). Iterative Laplacian score for feature selection. In Pattern Recognition: Chinese Conference, CCPR 2012, Beijing, China, September 24-26, 2012. Proceedings 5 (pp. 80-87). Springer Berlin Heidelberg.](https://link.springer.com/chapter/10.1007/978-3-642-33506-8_11)