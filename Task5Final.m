


trainAudioFreq = fft(trainAudiorecords, [], 2);
trainAudioSh = fftshift( trainAudioFreq, 2);

trainAudioSpec = abs(trainAudioSh); 

%create LPF
 u = zeros(1,7000);
 e = ones(1,4500);
 v = ones(1,1000) .*0.5;
 i = horzcat(u,e,v,e,u);
 
trainAudioSpec = trainAudioSpec .*i;

testAudioFreq = fft(testAudiorecords, [], 2);
testAudioSh = fftshift( testAudioFreq, 2);

testAudioSpec = abs(testAudioSh); 

classSpec = svmtrain(trainAudioSpec, trainAudiolabels);

b = svmclassify(classSpec, testAudioSpec);

z = nnz(b == testAudiolabels)

r = z/900