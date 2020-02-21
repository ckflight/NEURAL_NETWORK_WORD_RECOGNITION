clear;clc;

w=44100;
lambda = 0.1;
numOfClass = 9;
load('allTheta.mat');

recObj = audiorecorder(w,16,2);
disp('Start speaking.')
recordblocking(recObj, 1);
disp('End of Recording.');
newInput  = getaudiodata(recObj);
newInput = abs(fft(newInput(:,1),w));
newInput = newInput'; 

[X,y] = voiceDataset(w);
m = size(X,1);
n = size(X,2);
X = [ones(m, 1) X];

output = sigmoid(([1 newInput])*allTheta');
[~,index] = max(output(1,:),[],2);
predictedY = index







