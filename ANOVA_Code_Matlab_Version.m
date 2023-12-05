clear all
close all
clc

%% Code for Statistical Analysis for Imaging Final Project 







%% ANOVA for severity 

% Example ratings (replace these with your actual data)

zeronumbers = zeros(1,30);
onenumbers = ones(1,15);
twonumbers = randi([2 2],1,15);

experts_ratings = [zeros(1,30),ones(1,15),randi([2 2],1,15)];
your_ratings = randi([0 2],1,60);

% Perform one-way ANOVA
[~,p] = anova1([experts_ratings', your_ratings'], {'Experts', 'Your Ratings'});

% Display the p-value
disp('ANOVA p-value:');
disp(p)

pval = p{2,6};
% Make a decision based on the p-value (e.g., assuming a significance level of 0.05)
if pval < 0.05
    disp('There is a significant difference between the ratings');
else
    disp('There is no significant difference between the ratings');
end








