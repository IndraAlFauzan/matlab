% bpm.m
n = 6;
p = 0.4;
xbinomial = binornd(n, p, [1, 1000]);

% Estimate P[outcome=3]
P_outcome_3 = sum(xbinomial == 3) / length(xbinomial);
disp(['Estimated probability P[outcome=3]: ', num2str(P_outcome_3)]);

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

% Hasil: 
% Estimated probability P[outcome=3]: 0.3
% Estimated probabilities for all outcomes:
% P[outcome=0]: 0.046
% P[outcome=1]: 0.174
% P[outcome=2]: 0.304
% P[outcome=3]: 0.3
% P[outcome=4]: 0.141
% P[outcome=5]: 0.03
% P[outcome=6]: 0.005