function [W_R, W_C, LS_Table] = getweights(X, epsilon)

if nargin < 2
    epsilon = 0.5;
end

num_features = width(X);
LS = zeros(num_features, 1);

% Gower disance to similarity
dist = gower(X);
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
is_numerical = false(num_features, 1); % Initialize as logical array
for i = 1:num_features
    feature_name = X.Properties.VariableNames{i};
    if isnumeric(X.(feature_name))
        is_numerical(i) = true; % Set to true (1) for numerical features
    else
        is_numerical(i) = false; % Set to false (0) for non-numerical features
    end
end

% A table with feature indices and their corresponding Laplacian scores
LS_Table = table((1:num_features)', is_numerical, LS, 'VariableNames', {'Feature_Index', 'Is_Numerical', 'LS'});

% Normalize LS and compute R_Normalized_LS
normalized_ls = (LS - min(LS)) / (max(LS) - min(LS));
LS_Table.Normalized_LS = normalized_ls;
LS_Table.R_Normalized_LS = 1 - normalized_ls;

% Calculate means for numerical and categorical features
W_R = mean(LS_Table.R_Normalized_LS(LS_Table.Is_Numerical));
W_C = mean(LS_Table.R_Normalized_LS(~LS_Table.Is_Numerical));


end