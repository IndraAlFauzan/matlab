% 6.1
n = 6;
p = 0.4;
xbinomial = binornd(n, p, [1, 1000]);

% 6.2 
% Estimate P[outcome=3] 
P_outcome_3 = sum(xbinomial == 3) / length(xbinomial);
disp(['Estimated probability P[outcome=3]: ', num2str(P_outcome_3)]);

% 6.3
% Calculate histogram
[bin_counts, bin_centers] = hist(xbinomial, 0:n);

% Normalize histogram to get probabilities
probabilities = bin_counts / length(xbinomial);

% Display probabilities
disp('Estimated probabilities for all outcomes:');
for i = 1:length(bin_centers)
    disp(['P[outcome=', num2str(bin_centers(i)), ']: ', num2str(probabilities(i))]);
end

% Plot histogram
figure;
bar(bin_centers, probabilities);
xlabel('Outcome');
ylabel('Probability');
title('Estimated Probabilities of Binomial Outcomes');

% Use the EstimateProb function to estimate probabilities
first_bin_center = 0;
binsize = 1;
last_bin_center = n;

[PX, X] = EstimateProb(xbinomial, first_bin_center, binsize, last_bin_center);

% Display the estimated probabilities
disp('Estimated probabilities using EstimateProb function:');
for i = 1:length(X)
    disp(['P[outcome=', num2str(X(i)), ']: ', num2str(PX(i))]);
end

% Plot the estimated probabilities
figure;
bar(X, PX);
xlabel('Outcome');
ylabel('Probability');
title('Estimated Probabilities using EstimateProb Function');

