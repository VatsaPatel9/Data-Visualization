close all;
clear all;
clc;

%Create random data
n = 15;
data = rand(1,n);

%set colors
colors = (jet(n)+1)/2;

%Add labels
labels = {};
for i= 1:n
    labels{i}= sprintf('%2.1f%%',100*data(i)/sum(data));
end
%Partition the data to blocks
rectangles = treemap(data);

%Plot the tree map
plotRect(rectangles,labels,colors);
