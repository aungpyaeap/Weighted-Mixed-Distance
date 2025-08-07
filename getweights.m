function [weightNumerical, weightCategorical] = getweights(X, epsilon)

if nargin < 2
    epsilon = 0.5;
end

num_features = width(X);
LS = zeros(num_features, 1);

% Gower disance
dist = gower(X);

% Transform to Gower similarity
S = 1 - dist;

% Adjacency matrix using epsilon
Adj = S;
Adj(Adj<epsilon) = 0;

% Degree matrix
D = diag(sum(Adj,2));

% Laplacian matrix
L = D - Adj;

% Encode table to find LS
X_encoded = array2table(encoder(X));

% Make a column vector of ones
ones_vector = ones(size(X_encoded, 1), 1);

% Loop through each feature
for i = 1:size(X_encoded, 2)
    fr = X_encoded{:, i}; % Access the i-th column

    % Compute hat_F_i
    hat_F_i = fr - (fr' * D * ones_vector) / (ones_vector' * D * ones_vector) * ones_vector;

    % Compute the Laplacian score for the i-th feature
    numerator = hat_F_i' * L * hat_F_i;
    denominator = hat_F_i' * D * hat_F_i;

    LS(i) = numerator / denominator;

end

% Loop through each feature to determine its feature type
is_numerical = cell(num_features, 1);
for i = 1:num_features
    feature_name = X.Properties.VariableNames{i};
    if isnumeric(X.(feature_name))
        is_numerical{i} = 'True';
    else
        is_numerical{i} = 'False';
    end
end

% Make a table with feature indices and their corresponding Laplacian scores
Feature_Index = (1:num_features)';
LS_Table = table(Feature_Index, is_numerical, LS, 'VariableNames', {'Feature_Index', 'Is_Numerical', 'LS'});

% Inverse normalize LS
min_ls = min(LS);
max_ls = max(LS);
normalized_ls = (LS - min_ls) / (max_ls - min_ls);
LS_Table.Normalized_LS = normalized_ls;
LS_Table.R_Normalized_LS = 1 - normalized_ls;

% Display the table
disp(LS_Table);

% Filter rows for numerical features
numerical_rows = strcmp(LS_Table.Is_Numerical, 'True');
weightNumerical = mean(LS_Table.R_Normalized_LS(numerical_rows));

% Filter rows for categorical features
categorical_rows = strcmp(LS_Table.Is_Numerical, 'False');
weightCategorical = mean(LS_Table.R_Normalized_LS(categorical_rows));

% Display the results
fprintf('W_R for numerical features: %.4f \n', weightNumerical);
fprintf('W_C for categorical features: %.4f \n', weightCategorical);

end