[x, Fs] = audioread('TestAudio.wav');
x = x * 0.5 / rms(x);
[c, l] = wavedec(x, 3, 'db4');
thrSqt = thselect(x,'sqtwolog');
b = wthresh(c, 's', thrSqt );
y = waverec(b, l , 'db4');
y = y * 0.5 / rms(y);
sound(y, Fs);