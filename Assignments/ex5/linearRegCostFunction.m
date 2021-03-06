function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


H = X*theta;
S1 = sum((H-y).^2);
S2 = (theta(2:size(theta))'*theta(2:size(theta))); %Regularization keeping out theta(1)
J = (S1/(2*m)) + ((lambda*S2)/(2*m));
grad = ((X'*(H-y))/m) + ([0;theta(2:size(theta))*lambda/(m)]); %Gradient keeping out theta(1)



% =========================================================================

grad = grad(:);

end
