clc; clear; close all;

dataPoints = readtable('medical-insurance.csv', VariableNamingRule='preserve');
epsilon = 0.5;
[weightNumerical, weightCategorical] = getweights(dataPoints, epsilon);
DIST = wmd(dataPoints,weightNumerical, weightCategorical);


% Data source
% Medical Insurance Dataset (Public)
% Source: https://data.mendeley.com/datasets/69xxkwghy4/1
% Contributor: Prakash M C Chinnathambi, SRM University
% License: CC BY 4.0