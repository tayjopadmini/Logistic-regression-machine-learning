
% this loads our data
[X,y] = load_data_ex1();

% now we want to normalise our data
[X,mean,std] = normalise_features(X);

% after normalising we add the bias
X=[ones(size(X,1),1),X,ones(size(X,1),3)];%appended three more columns of ones
theta=ones(1,6); % change number of columns in theta from 3 to 6 in order to accommodaate the 5D vector

% for question 7, modify the dataset X to have more features (in each row)
	% append to X(i),the following features:
	% here append x_2 * x_3 (remember that x_1 is the bias)
X(:,4)=X(:,2).* X(:,3);
	% here append x_2 * x_2 (remember that x_1 is the bias)
X(:,5)=X(:,2) .* X(:,2);

	% here append x_3 * x_3 (remember that x_1 is the bias)
X(:,6)=X(:,3).* X(:,3);

% initialise theta
alpha = 0.01;
iterations = 100;


[t,cost_array]=gradient_descent(X,y,theta,alpha,iterations);

display(['Error:',num2str(compute_cost(X,y,t))]);