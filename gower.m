function D = gower(data)
[n, p] = size(data);
D = zeros(n, n);

for i = 1:p
    column = data{:, i};
    if isnumeric(column)
        range = max(column) - min(column);
        if range == 0
            continue;
        end
        d = abs(column - column') / range;
    elseif iscell(column) || iscategorical(column) || isobject(column)
        d = zeros(n, n);
        for j = 1:n
            for k = 1:n
                d(j,k) = ~isequal(column{j}, column{k});
            end
        end
    else
        warning('Skipping column %d: unsupported data type', i);
        continue;
    end

    D = D + d;
end

D = D / p;

end