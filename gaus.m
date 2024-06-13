% gauss.m

% Parameters for the Gaussian probability model
mu = 6;
sigma = 2.5;

% Generate 1000 outcomes of the Gaussian probability model
xgaussian = normrnd(mu, sigma, [1, 1000]);

% Estimate the probabilities of occurrence using bins
first_bin_center = -5;
binsize = 0.5;
last_bin_center = 15;

[PX, X] = EstimateProb(xgaussian, first_bin_center, binsize, last_bin_center);

% Plot the estimated probabilities
figure;
bar(X, PX);
xlabel('Outcome');
ylabel('Probability');
title('Estimated Probabilities of Gaussian Outcomes');

% Estimate the mean and variance from the data
estimated_mu = mean(xgaussian);
estimated_sigma = std(xgaussian);

% Display the estimated parameters
disp(['Estimated mean (μ): ', num2str(estimated_mu)]);
disp(['Estimated standard deviation (σ): ', num2str(estimated_sigma)]);

% Compare with the original parameters
disp(['Original mean (μ): ', num2str(mu)]);
disp(['Original standard deviation (σ): ', num2str(sigma)]);

% Hasil
% Estimated mean (μ): 6.0155
% Estimated standard deviation (σ): 2.5044
% Original mean (μ): 6
% Original standard deviation (σ): 2.5
