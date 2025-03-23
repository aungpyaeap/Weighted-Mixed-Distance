function [weightNumerical, weightCategorical] = FindWeights(X, epsilon)

num_features = width(X);
LS = zeros(num_features, 1);

dist = GowerDistance(X);

S = 1 - dist;

Adj = S;
Adj(Adj<epsilon) = 0;

D = diag(sum(Adj,2));

L = D - Adj;

X_encoded = array2table(EncodeCategoricalFeatures(X));

ones_vector = ones(size(X_encoded, 1), 1);

for i = 1:size(X_encoded, 2)
    fr = X_encoded{:, i};
    hat_F_i = fr - (fr' * D * ones_vector) / (ones_vector' * D * ones_vector) * ones_vector;
    numerator = hat_F_i' * L * hat_F_i;
    denominator = hat_F_i' * D * hat_F_i;
    LS(i) = numerator / denominator;

end

is_numerical = cell(num_features, 1);
for i = 1:num_features
    feature_name = X.Properties.VariableNames{i};
    if isnumeric(X.(feature_name))
        is_numerical{i} = 'True';
    else
        is_numerical{i} = 'False';
    end
end

Feature_Index = (1:num_features)';
LS_Table = table(Feature_Index, is_numerical, LS, 'VariableNames', {'Feature_Index', 'Is_Numerical', 'LS'});

min_ls = min(LS);
max_ls = max(LS);
normalized_ls = (LS - min_ls) / (max_ls - min_ls);
LS_Table.Normalized_LS = normalized_ls;
LS_Table.R_Normalized_LS = 1 - normalized_ls;

numerical_rows = strcmp(LS_Table.Is_Numerical, 'True');
weightNumerical = mean(LS_Table.R_Normalized_LS(numerical_rows));

categorical_rows = strcmp(LS_Table.Is_Numerical, 'False');
weightCategorical = mean(LS_Table.R_Normalized_LS(categorical_rows));

disp(LS_Table);

disp(['W_R for numerical features: ', num2str(weightNumerical)]);
disp(['W_C categorical features: ', num2str(weightCategorical)]);

end