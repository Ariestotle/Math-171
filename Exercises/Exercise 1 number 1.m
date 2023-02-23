S = 0; % Let S be the sum
n = 10000000; % set the number of terms, set to a much larger number like 1000000
i = 1:n; % set the iteration for the for loop from 1 to n
k = 0;
S_result = zeros(numel(i),1); %Create m x n matrix of zeros to be used for storing the values of S in the for loop code below
for i = i
    S = S + (1/(i^2)); % calculate the sum from 1 to n using the 1/n^2
    S_result(k+1) = S; %will store the values of S into an array inside S_result
    k = k + 1;
end

%d = eps(x), where x has data type single or double, returns the positive distance from abs(x) to the next larger floating-point number of the same precision as x. If x has type duration, then eps(x) returns the next larger duration value. The command eps(1.0) is equivalent to eps.
%reference: https://www.mathworks.com/help/matlab/ref/eps.html


%acquire double-precision floating relative accuracy
d_double_1 = eps(double(S_result(n))); %for the nth Sum term
d_double_2 = eps(double(S_result(n-1))); %for the (n-1)th Sum term
%will print the number of terms used
fprintf('number of terms = %.f', n)

%displays the number of terms to obtain the sum in S_result
fprintf('The sum of the given %.f terms:', n)
S_result(n) %display the sum of the n terms set 

%displays the relative accuracy using the eps function
disp("Double Precision Relative Accuracy for the sum in S_result(n):")
disp(d_double_1);
disp("Double Precision Relative Accuracy for the sum in S_result(n-1):")
disp(d_double_2);

% At this part of the code it can also be shown that at the last 100 terms
% the sum is no longer affected at the set n terms

end_term = 100;
fprintf("It can be show here that at the last %.f terms the sum is not affected by adding another term", end_term)
for b=1:end_term
   S_result(n-b)
end