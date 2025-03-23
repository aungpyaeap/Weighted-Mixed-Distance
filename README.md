# WeightedMixedDistance
A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach.

Let data points
$\mathfrak{X} = \{x_i \in \mathbb{R}^m \mid i=1,2,\cdots,n\}$, $m:=m_R + m_C$ be a mixed dataset. The Weighted Mixed Distance (WMD) metric is defined as

![Weighted Mixed Distance](wmd-distance-formula.svg)

where $w_R$ is the weight of numerical features and $w_C$ is the weight of categorical features.