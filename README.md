# Binary Linear Logistic Regression
This repository provides a sample MATLAB code in order to perform a supervised Machine Learning algorithm: Logistic Regression for binary classification.

# Organization of the Repository
The main MATLAB file is named "BinaryLogisticRegressioLinear.m" while the other MATLAB files are fuctions used in the main file. You may feed the algorithm with whatever dataset you wish, no matter what the dimension is (but take into account that the training set must be a binary classification). However, two sets of input data are included as an example to implement the algorithm. Depending on the number of variables your dataset has, the algorithm may plot the input data and decision boundry. Also, in addition to unregularized learning parameters, a regularized approach is included in order to combat the problem of over-fitting. The codes are self-explanatory and contain comments to improve your understanding of what is going on. Furthermore, wherever any intervention is required, the comments in the code prompt you to do so.

# Input Data
The file dataLin.txt is a two-variable dataset and contains the data for logistic regression in order to predict if a student is addmited to a university based on their results on two exams. We have data for the applicant's scores on two exams on the first and second columns and the admissions decision on the third column. Using this database, we would like to predict the chance of admission to the university.
