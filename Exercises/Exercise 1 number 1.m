%% Name: Jose Aries E. De Los Santos SN: 2021-21523
%% Math 171 THU 
%% Exercise 1 no. 1

x3 = []; %initialize the matrix/vector
n = 100000; % set the number of terms, set to a much larger number like 1000000
i = 1:n; % set the iteration for the for loop from 1 to n
sum = 0; % set the starting point for the sum
for i=i
    sum = sum + (1/(i^2)); % calculate the sum from 1 to n using the 1/n^2
    x3 = [x3; sum]; %output the values into row vector
end

%d = eps(x), where x has data type single or double, returns the positive distance from abs(x) to the next larger floating-point number of the same precision as x. If x has type duration, then eps(x) returns the next larger duration value. The command eps(1.0) is equivalent to eps.
%reference: https://www.mathworks.com/help/matlab/ref/eps.html


%acquire double-precision floating relative accuracy
d_double_1 = eps(double(x3(n))); %for the nth Sum term
d_double_2 = eps(double(x3(n-1))); %for the (n-1)th Sum term
%will print the number of terms used
fprintf('number of terms = %.f    \n', n)
%displays the number of terms to obtain the sum in S_result
fprintf('the sum for set %.f number of terms    \n', n)
x3(n) %display the sum of the n terms set 

%displays the relative accuracy using the eps function
disp("Double Precision Relative Accuracy for the sum at nth:")
disp(d_double_1);
disp("Double Precision Relative Accuracy for the sum in (n-1)th:")
disp(d_double_2);

% At this part of the code it can also be shown that at the last 100 terms
% the sum is no longer affected at the set n terms

endterm = 100;
fprintf("It can be show here that at the last %.f terms the sum is not affected by adding another term", end_term)
for b=1:endterm
    x3(n-b) %displays that values for the last number of terms set at the endterm variable
end
