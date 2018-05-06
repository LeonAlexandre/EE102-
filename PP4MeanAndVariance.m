%Implements basic Mean and Variance computations

function [mean_val, variance] = PP4MeanAndVariance(Y)


% Y: input vector containing signal values
% mean_val: mean of the added noise
% variance: variance of the added noise

s = size(Y,2);
mean_val = ( sum(Y.*(1/s)));
variance = ( sum((Y.^2).*(1/s))) - ( sum(Y.*(1/s))^2);


end
