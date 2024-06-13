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

% The even indices of the new array are already zeros

% Display the result
disp('Result with zeros inserted:');
disp(result_with_zeros);
