[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)]()

# Weighted Mixed Distance [`[paper]`](https://github.com/aungpyaeap)

**Paper title: A Distance Metric for Clustering Mixed Data Using Graph-Based Feature Influence Balancing Approach**

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
dataPoints = readtable('medical-insurance.csv', VariableNamingRule='preserve');
epsilon = 0.5;
[weightNumerical, weightCategorical] = getweights(dataPoints, epsilon);
DIST = wmd(dataPoints,weightNumerical, weightCategorical);
disp(DIST);
```

## Experiment Results
![Experiment workflow](Experiment-results/experiment-workflow.png)
![Single linkage clustering](Experiment-results/heatmap_single_linkage.png)
![Complete linkage clustering](Experiment-results/heatmap_complete_linkage.png)
![Average linkage clustering](Experiment-results/heatmap_average_linkage.png)
![Weighted linkage clustering](Experiment-results/heatmap_weighted_linkage.png)

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
- Scitovski, R., Sabo, K., Martínez-Álvarez, F., & Ungar, Š. (2022). *Cluster analysis and applications* (2021 ed.). Springer Nature.
- Gower, J. C. (1971). A general coefficient of similarity and some of its properties. *Biometrics*, *27*, 857–871.
- Van de Velden, M., Iodice D'Enza, A., & Markos, A. (2019). Distance-based clustering of mixed data. *Wiley Interdisciplinary Reviews: Computational Statistics*, *11*(3), e1456.
- Jia, H., Cheung, Y.-m., & Liu, J. (2015). A new distance metric for unsupervised learning of categorical data. *IEEE Transactions on Neural Networks and Learning Systems*, *27*(5), 1065–1079.
- Ji, J., Li, R., Pang, W., He, F., Feng, G., & Zhao, X. (2021). A multi-view clustering algorithm for mixed numeric and categorical data. *IEEE Access*, *9*, 24913–24924.
- Ning, Z., Chen, J., Huang, J., Sabo, U. J., Yuan, Z., & Dai, Z. (2022). WeDIV—An improved k-means clustering algorithm with a weighted distance and a novel internal validation index. *Egyptian Informatics Journal*, *23*(4), 133–144.
- Von Luxburg, U. (2007). A tutorial on spectral clustering. *Statistics and Computing*, *17*, 395–416.
- Miyamoto, S. (2022). *Theory of agglomerative hierarchical clustering* (2022 ed.). Springer.
- Belanche Muñoz, L. A., & Hernández González, J. (2012). Similarity networks for heterogeneous data. In *ESANN 2012: The 20th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning* (pp. 215–220). I6doc.com.
- AbdAllah, L., & Shimshoni, I. (2016). K-means over incomplete datasets using mean Euclidean distance. In *International Conference on Machine Learning and Data Mining in Pattern Recognition* (pp. 113–127). Springer.
- Wilson, D. R., & Martinez, T. R. (1997). Improved heterogeneous distance functions. *Journal of Artificial Intelligence Research*, *6*, 1–34.
- Alelyani, S., Tang, J., & Liu, H. (2018). Feature selection for clustering: A review. In *Data Clustering* (pp. 29–60). Chapman and Hall/CRC.
- Zhu, L., Miao, L., & Zhang, D. (2012). Iterative Laplacian score for feature selection. In *Pattern Recognition: Chinese Conference, CCPR 2012, Beijing, China, September 24–26, 2012. Proceedings 5* (pp. 80–87). Springer.
- Diop, A., El Malki, N., Chevalier, M., Péninou, A., & Teste, O. (2022). Impact of similarity measures on clustering mixed data. In *Proceedings of the 34th International Conference on Scientific and Statistical Database Management* (pp. 1–12).
- Tomašev, N., & Radovanović, M. (2016). Clustering evaluation in high-dimensional data. In *Unsupervised Learning Algorithms* (pp. 71–107). Springer.
- Rousseeuw, P. J. (1987). Silhouettes: A graphical aid to the interpretation and validation of cluster analysis. *Journal of Computational and Applied Mathematics*, *20*, 53–65.
- Hennig, C., Meila, M., Murtagh, F., & Rocci, R. (2015). *Handbook of cluster analysis* (1st ed.). Chapman and Hall/CRC.
- Pyae, A., Low, Y.-C., & Chua, H. N. (2024). A combined distance metric approach with weight adjustment for improving mixed data clustering quality. In *2024 IEEE International Conference on Artificial Intelligence in Engineering and Technology (IICAIET)* (pp. 183–188). IEEE.
- The MathWorks, Inc. (2025). *Statistics and Machine Learning Toolbox* (Version 24.2.0 [R2024b]). Natick, Massachusetts, United States.
- José-García, A., & Gómez-Flores, W. (2023). CVIK: A Matlab-based cluster validity index toolbox for automatic data clustering. *SoftwareX*, *22*, 101359.
- Ahmad, A., & Khan, S. S. (2019). Survey of state-of-the-art mixed data clustering algorithms. *IEEE Access*, *7*, 31883–31902.
