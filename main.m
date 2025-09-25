clc; clear; close all;

set = {
    80.6, 1.85, "B+", "Teaching";
    73.6, 1.72, "A+", "Teaching";
    70.8, 1.79, "B+", "Medical";
    85.9, 1.91, "A-", "Sportsman";
    83.4, 1.65, "A+", "Medical";
};
points = cell2table(set, 'VariableNames', {'Weight_kg', 'Height_m', 'BloodGroup', 'Profession'});
disp(points);

[W_R, W_C, LS_Table] = getweights(points);
D = wmd(points, W_R, W_C);
disp("Distance matrix");
disp(D);

fprintf('W_R for numerical features: %.4f\n', W_R);
fprintf('W_C for categorical features: %.4f\n', W_C);
disp(LS_Table);