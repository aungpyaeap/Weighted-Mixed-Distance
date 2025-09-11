function D = distfun(XI, XJ, distance)

switch distance
    case 'cosine'
        normXI = sqrt(sum(XI.^2, 2));
        normXJ = sqrt(sum(XJ.^2, 2));
        D = 1 - (sum(XI .* XJ, 2) ./ (normXI .* normXJ));
        D(abs(D) < 1e-10) = 0; % Set very small values to zero
    case 'binary'
        XI = categorical(XI);
        XJ = categorical(XJ);
        D = sum(XI ~= XJ, 2); % Assumes XI and XJ are categorical arrays
    otherwise
        error('Invalid distance parameter.');
end

end
