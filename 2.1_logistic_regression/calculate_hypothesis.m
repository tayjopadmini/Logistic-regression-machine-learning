function result=calculate_hypothesis(X,theta,training_example)
    hypothesis = X(training_example,1:end)*theta';
    %%%%%%%%%%%%%%%%%%%%%%%%
    %Calculate the hypothesis for the i-th training example in X.
    
    %%%%%%%%%%%%%%%%%%%%%%%%
    result=sigmoid(hypothesis);
end
%END OF FUNCTION
    

