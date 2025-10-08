function [WR, WC, LS_Table] = FindWeights(X, epsilon)

if nargin < 2
    epsilon = 0.5;
end

num_features = width(X);
LS = zeros(num_features, 1);

DXX = gower(X);
S = 1 - DXX;

Adj = S;
Adj(Adj<epsilon) = 0;

D = diag(sum(Adj,2));

L = D - Adj;

X_encoded = array2table(encoder(X));

ones_vector = ones(size(X_encoded, 1), 1);

for i = 1:size(X_encoded, 2)
    fr = X_encoded{:, i};

    hat_F_i = fr - (fr' * D * ones_vector) / (ones_vector' * D * ones_vector) * ones_vector;

    numerator = hat_F_i' * L * hat_F_i;
    denominator = hat_F_i' * D * hat_F_i;

    LS(i) = numerator / denominator;
end

is_numerical = false(num_features, 1);
for i = 1:num_features
    feature_name = X.Properties.VariableNames{i};
    if isnumeric(X.(feature_name))
        is_numerical(i) = true;
    else
        is_numerical(i) = false;
    end
end

LS_Table = table((1:num_features)', is_numerical, LS, 'VariableNames', {'Feature_Index', 'Is_Numerical', 'LS'});

normalized_ls = (LS - min(LS)) / (max(LS) - min(LS));
LS_Table.Normalized_LS = normalized_ls;
LS_Table.R_Normalized_LS = 1 - normalized_ls;

WR = mean(LS_Table.R_Normalized_LS(LS_Table.Is_Numerical));
WC = mean(LS_Table.R_Normalized_LS(~LS_Table.Is_Numerical));

end