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


% 6.4
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

% Hasil

% Estimated probability P[outcome=3]: 0.283
% Estimated probabilities for all outcomes:
% P[outcome=0]: 0.047
% P[outcome=1]: 0.185
% P[outcome=2]: 0.305
% P[outcome=3]: 0.283
% P[outcome=4]: 0.139
% P[outcome=5]: 0.034
% P[outcome=6]: 0.007
% Estimated probabilities using EstimateProb function:
% P[outcome=0.5]: 0.047
% P[outcome=1.5]: 0.185
% P[outcome=2.5]: 0.305
% P[outcome=3.5]: 0.283
% P[outcome=4.5]: 0.139
% P[outcome=5.5]: 0.034
% P[outcome=6.5]: 0.007

% 6.5

% Use the EstimateProb function to estimate probabilities with bin size 1
[PX1, X1] = EstimateProb(xbinomial, 0, 1, 6);
figure;
bar(X1, PX1);
xlabel('Outcome');
ylabel('Probability');
title('Estimated Probabilities using EstimateProb Function (Bin Size 1)');

% Use the EstimateProb function to estimate probabilities with bin size 0.5
[PX2, X2] = EstimateProb(xbinomial, -5, 0.5, 12);
figure;
bar(X2, PX2);
xlabel('Outcome');
ylabel('Probability');
title('Estimated Probabilities using EstimateProb Function (Bin Size 0.5)');

% Hasil
% Estimated probability P[outcome=3]: 0.285
% Estimated probabilities for all outcomes:
% P[outcome=0]: 0.044
% P[outcome=1]: 0.159
% P[outcome=2]: 0.327
% P[outcome=3]: 0.285
% P[outcome=4]: 0.135
% P[outcome=5]: 0.041
% P[outcome=6]: 0.009