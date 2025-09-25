function D = wmd(X, WR, WC)

m = width(X);

numFeatureIdx = varfun(@isnumeric, X, 'OutputFormat', 'uniform');
catFeatureIdx = varfun(@iscellstr, X, 'OutputFormat', 'uniform');

numData = table2array(X(:, numFeatureIdx));
catData = table2cell(X(:, catFeatureIdx));

numDistances = sqrt(pdist2(numData, numData, @(XI, XJ) distfun(XI, XJ, 'cosine')));
catDistances = pdist2(catData, catData, @(XI, XJ) distfun(XI, XJ, 'binary'));

D = (WR * numDistances + WC * catDistances) / m;

end