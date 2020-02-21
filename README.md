# Neural_Network_Word_Recognition

This a simple Neural Network Implementation based on the Prof. Andrew Ng's course on coursera.
Check to learn more: https://www.coursera.org/learn/machine-learning

1. Record your voice with different vocals by saying "one" "two" etc. (One number at each record) and create your dataset. My dataset had 20 training example for each number. 20 ones, 20 twos ... total of 180 training example.

2. Train this dataset with "numberVoiceDatasetTrain.m" file which will create "allTheta.mat" file.

3. Use numberVoiceDetection.m file to record your voice and detect which number you are speaking.

Notes:

As you might know, human ear does hear with frequency domain not with raw data. Therefore, detection with raw record data is a mess and the performance is low. To have a meaningfull data, FFT of records are taken so algorithm works on frequency domain.

  
