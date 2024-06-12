% Generate a random integer vector X of length 50 with values between 1 and 99
X = randi([1, 99], 1, 50);

% Select all the elements at even positions
even_positions = X(2:2:end);

% Display the original matrix
disp('Original matrix:');
disp(X);

% Display the elements at even positions
disp('Elements at even positions:');
disp(even_positions);

% Initialize an empty array with size twice the length of even_positions minus 1
result_with_zeros = zeros(1, 2 * length(even_positions) - 1);

% Assign the even positions to the odd indices of the new array
result_with_zeros(1:2:end) = even_positions;

% Display the result with zeros inserted
disp('Result with zeros inserted:');
disp(result_with_zeros);

% Replace the zero elements by the average of the two neighboring elements
for i = 2:2:length(result_with_zeros)-1
    result_with_zeros(i) = (result_with_zeros(i-1) + result_with_zeros(i+1)) / 2;
end

% Display the final result with one decimal place
disp('Result with zeros replaced by averages (one decimal place):');
fprintf('%.1f ', result_with_zeros);
fprintf('\n');

% Original matrix:
%   Columns 1 through 29

%     30    70    66    54    70    66    18    13    99    17     4    56    88    67    19    37    46    98    16    85    64    38    19    43    48    12    59    23    39

%   Columns 30 through 50

%     58    25    29    62    27    82    98    73    35    58    11    90    88    81    26    59     3    43    31    16    18

% Elements at even positions:
%     70    54    66    13    17    56    67    37    98    85    38    43    12    23    58    29    27    98    35    11    88    26     3    31    18

% Result with zeros inserted:
%   Columns 1 through 29

%     70     0    54     0    66     0    13     0    17     0    56     0    67     0    37     0    98     0    85     0    38     0    43     0    12     0    23     0    58

%   Columns 30 through 49

%      0    29     0    27     0    98     0    35     0    11     0    88     0    26     0     3     0    31     0    18

% Result with zeros replaced by averages:
%   Columns 1 through 12

%          70.00         62.00         54.00         60.00         66.00         39.50         13.00         15.00         17.00         36.50         56.00         61.50

%   Columns 13 through 24

%          67.00         52.00         37.00         67.50         98.00         91.50         85.00         61.50         38.00         40.50         43.00         27.50

%   Columns 25 through 36

%          12.00         17.50         23.00         40.50         58.00         43.50         29.00         28.00         27.00         62.50         98.00         66.50

%   Columns 37 through 48

%          35.00         23.00         11.00         49.50         88.00         57.00         26.00         14.50          3.00         17.00         31.00         24.50

%   Column 49

%          18.00



