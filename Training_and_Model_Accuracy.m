clc
clear all
close all
warning off

%----------------LOAD THE EXTRACTED FEATURES----------------%

load hogfeatures
load trainingLabels


%-----------------PARTITIONING THE DATASET------------------%
cv = cvpartition(size(hogFeatures,1),'HoldOut',0.3);
idx = cv.test;
dataTrain=hogFeatures(~idx,:);
dataTrainL = trainingLabels(~idx,:);
dataTest=hogFeatures(idx,:);
dataTestL = trainingLabels(idx,:);


%-------------------TRAINING THE MODEL----------------------%

model = TreeBagger(700,dataTrain,dataTrainL,'OOBPrediction','On',...
     'Method','classification');

 
%---------------------ACCURACY CALCULATION-----------------------% 
[prediction, scores]=predict(model,dataTest);
Accuracy = (sum(prediction==dataTestL)/size(dataTest,1))*100;

%--------------------CALCULATING MODEL PERFORMANCE CURVES--------%

%-----------------------PRECISION vs RECALL----------------------%
prediction = categorical(prediction);
confmat = confusionmat(dataTestL, prediction);
confchart = confusionchart(dataTestL,prediction);
for i =1:size(confmat,1)
    recall(i)=confmat(i,i)/sum(confmat(i,:));
end
Recall = sum(recall)/size(confmat,1);
for i =1:size(confmat,1)
    precision(i)=confmat(i,i)/sum(confmat(:,i));
end
Precision=sum(precision)/size(confmat,1);
F_score=2*Recall*Precision/(Precision+Recall);


%---------------------ROC CURVE--------------------------------%
figure;
title('ROC curve');
k = 02;
    [X,Y,t,AUC] = perfcurve(dataTestL,scores(:,k),k-1);
    plot(X,Y);
    plot(X,Y,'LineWidth',1.25,'Color','b');
    xlabel('False positive rate');
    ylabel('True positive rate');
    title('ROC for classification-AUC',num2str(AUC));
   [Xr,Yp,tpr,AUC_pr] = perfcurve(dataTestL,scores(:,k),k-1,'Xcrit','reca','YCrit','prec');
    figure;
    plot(Xr,Yp,'LineWidth',1.25,'Color','r');
    xlabel('Recall');
    ylabel('Precision');
    title('PR curve-AUC', num2str(AUC_pr));