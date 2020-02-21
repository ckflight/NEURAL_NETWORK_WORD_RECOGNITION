function [X,y] = voiceDataset(w)

row = 180;
numberOfDataPerClass = 20;

X = zeros(row,w);
y = zeros(row,1);

k = 1;
l = 1;

for i = 1:row
    s1 = '/Users/ck/Desktop/Workspace/Matlab Workspace/Word_Recognition_Neural_Network/Word_Recognition_Dataset/';
    s2 = num2str(i);
    s3 = '.m4a';
    data = audioread(strcat(s1,s2,s3));
    data = abs(fft(data(:,1),w));
    data = data(1:length(data));
    data = data.*2;
    X(i,:) = data;
    if k<=numberOfDataPerClass
        y(i,1) = l;
        k=k+1;
    else
        l=l+1;
        y(i,1) = l;
        k=2;
    end
end

end











