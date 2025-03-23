function encodedX = EncodeCategoricalFeatures(X)
varNames = X.Properties.VariableNames;
encodedVars = cell(size(X, 2), 1);

for i = 1:size(X, 2)
    if iscategorical(X.(varNames{i})) || iscellstr(X.(varNames{i})) || isstring(X.(varNames{i}))
        [uniqueCategories, ~, idx] = unique(X.(varNames{i}));
        freqCounts = histcounts(idx, 1:max(idx)+1);
        frequencyMap = containers.Map(uniqueCategories, freqCounts);
        encodedVars{i} = cellfun(@(x) frequencyMap(x), X.(varNames{i}));
    else
        encodedVars{i} = X.(varNames{i});
    end
end

encodedX = table(encodedVars{:}, 'VariableNames', varNames);
encodedX = double(table2array(encodedX));

end