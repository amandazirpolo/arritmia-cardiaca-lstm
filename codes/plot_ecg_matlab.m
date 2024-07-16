clc; % limpa a janela de comando
clear; % limpa as variaveis do workspace
close all; % fecha as janelas de figuras

% le o arquivo de dados
data = load("data\dataset_chapmanShaoxing\JS00008.mat");
% taxa de amostragem 500hz
Fs = 500;
% tempo de coleta
time = (0:length(data.val)-1) / Fs;

% plot do exame
figure;
plot(time, data.val);
xlabel('Tempo (segundos)');
ylabel('Amplitude da onda cardíaca');
title('ECG JS00008');
grid on;
