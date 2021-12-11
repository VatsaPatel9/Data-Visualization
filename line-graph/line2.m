close all;
clear all;
clc;

load fisheriris;
labels = {'Sepal Length','Sepal Width','Petal Length','Petal Width'};
h = parallelcoords(meas,'Group',species,'Labels',labels);
h(1).LineWidth = 3;
h(51).LineWidth = 3;
h(101).LineWidth = 3;
