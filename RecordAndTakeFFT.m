clear;clc;

Fs = 44100;
recObj = audiorecorder(44100,16,2);%Fs,nBit,channel
disp('Start speaking.')
recordblocking(recObj, 1);
disp('End of Recording.');


newInput  = getaudiodata(recObj);
newInput = newInput(:,1);
newInput = abs(fft(newInput,Fs));
length(newInput)
newInput = newInput(1:length(newInput)/2);
newInput = newInput.*2;

%[~,index] = max(newInput,[],1);
%freq = (index)

%peak threashold depends on power of sound(volume etc.)
[pks,locs] = findpeaks(newInput,'MinPeakHeight',100);
plot(newInput);

















