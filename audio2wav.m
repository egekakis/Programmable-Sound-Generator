%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Audio File 2 WAV Converter
%Eamon Gekakis 
%6/15/22
%Rev 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function audio2wav(~) %creates a .wav file from a selected audio file 

fprintf('Please select audio file to convert \n');
[audioFile,audioFilePath] = uigetfile; %UI prompt for file selection
if audioFile == 0 %basic error handling if no file is selected
    fprintf('No file selected \n')
end
cd(audioFilePath); %sets directory to where audio file is located
clc
[y,Fs] = audioread(audioFile); %reads audio file data and sample rate
prompt = 'Please enter desired .wav filename as a string (including .wav file extension) \n';
wavFileName = input(prompt); %stores user-defined .wav filename
audiowrite(wavFileName,y,Fs); %writes .wav file 
end