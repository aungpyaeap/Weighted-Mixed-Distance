clc; clear; close all;

dataPoints = readtable('synthetic-mixed-sample.csv', VariableNamingRule='preserve');

epsilon = 0.5;
[weightNumerical, weightCategorical] = FindWeights(dataPoints, epsilon);

DIST = WeightedMixedDistance(dataPoints,weightNumerical, weightCategorical);

disp(DIST);