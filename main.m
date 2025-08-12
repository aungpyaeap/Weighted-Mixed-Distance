clc; clear; close all;

dataPoints = readtable('medical-insurance.csv', VariableNamingRule='preserve');

[weightNumerical, weightCategorical] = getweights(dataPoints);

DIST = wmd(dataPoints, weightNumerical, weightCategorical);
