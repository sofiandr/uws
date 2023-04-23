load('P1_low1.mat') 
signal=y(:,1)


% Define the parameters for the spectrogram
win_size = 256;
hop_size = 128;
nfft = 256;
freqs = linspace(0, fs/2, nfft/2+1);
time = (0:hop_size:length(signal)-win_size)/fs;

% Compute the spectrogram
spectrogram = zeros(length(freqs), length(time));
for i = 1:length(time)
    % Extract a segment of the signal
    segment = signal(round(time(i)*fs)+1 : round(time(i)*fs)+win_size);
    % Apply a window function (rectangular)
    window = ones(win_size, 1);
    windowed_segment = window .* segment;
    % Compute the FFT and power spectrum
    spectrum = fft(windowed_segment, nfft);
    power_spectrum = abs(spectrum(1:nfft/2+1)).^2;
    % Store the power spectrum as a column in the spectrogram matrix
    spectrogram(:, i) = power_spectrum;
end

% Convert the power spectrum to dB
spectrogram = 10*log10(spectrogram);



% Create a subplot with two plots
subplot(2,1,2)
plot(trig)
xlabel('Time (samples)')
ylabel('-1: distractor | +1: nontarget | +2: target')
title(' Vibrations on Different Regions')
subplot(2,1,1)
imagesc(time, freqs, spectrogram)
axis xy % flip the y-axis to have low frequencies at the bottom
xlabel('Time (sec)')
ylabel('Frequency (Hz)')
title('Spectrogram')
colorbar