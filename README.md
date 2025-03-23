# WeightedMixedDistance
A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach.

Let data points
$\mathfrak{X} = \{x_i \in \mathbb{R}^m \mid i=1,2,\cdots,n\}$, $m:=m_R + m_C$ be a mixed dataset. The Weighted Mixed Distance (WMD) metric is defined as
\begin{multline}
\text{WMD}(x_i,x_j) = \frac{1}{m} \left[ w_R \times \sum_{k=1}^{m_R} d_{ijk}^{mx} + w_C \times \sum_{k=1}^{m_C} d_{ijk}^{mx} \right],\\
d_{ijk}^{mx} := 
\begin{cases}
\sqrt{1 - \frac{x_i \cdot x_j}{\|x_i\| \|x_j\|}} & \text{if $x_{ik}$ and $x_{jk}$ are numerical} \\
0 & \text{if $x_{ik} = x_{jk}$ (categorical)} \\
1 & \text{if $x_{ik} \neq x_{jk}$ (categorical)}
\end{cases}
\end{multline}
where $w_R$ is the weight of numerical features and $w_C$ is the weight of categorical features.