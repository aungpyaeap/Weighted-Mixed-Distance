clc; clear; close all;

dataPoints = readtable('mixed-sample.csv', VariableNamingRule='preserve');
[weightNumerical, weightCategorical] = getweights(dataPoints);
DIST = wmd(dataPoints, weightNumerical, weightCategorical);
disp(DIST);