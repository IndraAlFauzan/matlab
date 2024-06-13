function [PX, X] = EstimateProb(Y, first_bin_center, binsize, last_bin_center)
    % Determine the number of bins
    bin_edges = first_bin_center:binsize:last_bin_center + binsize; % Include the last edge
    X = bin_edges(1:end-1) + binsize / 2; % Calculate bin centers

    % Calculate the histogram
    bin_counts = histcounts(Y, bin_edges);
    
    % Normalize the counts to get probabilities
    PX = bin_counts / length(Y);
end
