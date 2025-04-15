function distanceMatrix = wmd(X, weightNumerical, weightCategorical)

n = height(X);
m = width(X);

numFeatureIdx = varfun(@isnumeric, X, 'OutputFormat', 'uniform');
catFeatureIdx = varfun(@iscellstr, X, 'OutputFormat', 'uniform');

numData = table2array(X(:, numFeatureIdx));
catData = table2cell(X(:, catFeatureIdx));

numDistances = sqrt(squareform(pdist(numData, 'cosine')));

catDistances = zeros(n, n);
for i = 1:n
    for j = 1:n
        catDistances(i, j) = sum(~strcmp(catData(i, :), catData(j, :)));
    end
end

distanceMatrix = (weightNumerical * numDistances + weightCategorical * catDistances) / m;

end