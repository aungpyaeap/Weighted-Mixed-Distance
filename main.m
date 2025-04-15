clc; clear; close all;

dataPoints = readtable('synthetic-mixed-sample.csv', VariableNamingRule='preserve');

epsilon = 0.5;
[weightNumerical, weightCategorical] = getweights(dataPoints, epsilon);

DIST = wmd(dataPoints,weightNumerical, weightCategorical);

disp(DIST);