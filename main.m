clc;
clear;
close all;

set = {
    80.6, 1.85, "B+", "Teaching";
    73.6, 1.72, "A+", "Teaching";
    70.8, 1.79, "B+", "Medical";
    85.9, 1.91, "A-", "Sportsman";
    83.4, 1.65, "A+", "Medical";
};
points = cell2table(set, 'VariableNames', {'Weight_kg', 'Height_m', 'BloodGroup', 'Profession'});
disp(points);

[weightNumerical, weightCategorical] = getweights(points);
D = wmd(points, weightNumerical, weightCategorical);
disp(D);