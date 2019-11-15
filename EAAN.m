function EAANN()
%Load developed EAANN
EAANN = load('EAANN.mat');
EAANN = EAANN.EAANN;    

% Training set
trainData        = load('trainData.arff.mat'); 
trainData        = trainData.trainData;
train_predicted  = EAANN(trainData(:,1:end-1)');
train_observed   = trainData(:,end);
train_mse        = mse(train_predicted(:),train_observed);
train_r2         = Correlation(train_predicted(:),train_observed,'r2');

% Test set
testData         = load('testData.arff.mat');
testData         = testData.testData;
test_predicted   = EAANN(testData(:,1:end-1)');
test_observed    = testData(:,end);
test_mse         = mse(test_predicted(:),test_observed);
test_r2          = Correlation(test_predicted(:),test_observed,'r2');
end