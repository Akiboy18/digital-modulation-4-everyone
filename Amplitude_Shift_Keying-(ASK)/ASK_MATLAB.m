% Define parameters
bits = [1 0 1 0 1 1 0 0]; % Your custom bits here
bit_rate = 1000;      % Bit rate in bits per second
f = 5000;             % Carrier frequency in Hz
A = 5;                % Amplitude for bit 1

% Generate continuous vectors for plotting
samples_per_bit = 100;
N = length(bits);
total_samples = N * samples_per_bit;

% Create uniform time axis
t = linspace(0, N/bit_rate, total_samples);

% Create continuous bit stream signal for plotting alignment
digital_signal = zeros(1, total_samples);
mod_signal = zeros(1, total_samples);

for i = 1:N
    idx = (i-1)*samples_per_bit + 1 : i*samples_per_bit;
    digital_signal(idx) = bits(i);
    mod_signal(idx) = bits(i) * A * cos(2 * pi * f * t(idx));
end

% Plot the signals with perfectly aligned X-axes
figure;
subplot(2,1,1);
plot(t, digital_signal, 'LineWidth', 2);
ylim([-0.5 1.5]);
title('Binary Input Data');
xlabel('Time (s)'); ylabel('Amplitude');

subplot(2,1,2);
plot(t, mod_signal, 'LineWidth', 1.5);
title('ASK Modulated Signal');
xlabel('Time (s)'); ylabel('Amplitude');

% Plot the carrier wave (same time axis) in a new figure
carrier = A * cos(2 * pi * f * t);

figure;
plot(t, carrier, 'r', 'LineWidth', 1.5);
title('Carrier Wave');
xlabel('Time (s)');
ylabel('Amplitude');
ylim([-A-1 A+1]);

% Map bit pairs to amplitudes (00->1, 01->2, 10->3, 11->4)
if mod(N,2)~=0
    bits = [bits 0]; % pad with zero if odd number of bits
    N = length(bits);
    total_samples = N * samples_per_bit;
    t = linspace(0, N/bit_rate, total_samples);
    digital_signal = zeros(1, total_samples);
end

% Define mapping
amp_map = containers.Map({'00','01','10','11'}, [1 2 3 4]);

% Prepare symbol sequence
num_symbols = N/2;
symbol_amplitudes = zeros(1,num_symbols);
symbol_bits = cell(1,num_symbols);
mod_signal_ml = zeros(1, total_samples);
digital_symbols = zeros(1, total_samples); % for plotting symbol index

for k = 1:num_symbols
    b1 = bits(2*k-1); b2 = bits(2*k);
    key = sprintf('%d%d', b1, b2);
    A_sym = amp_map(key);
    symbol_amplitudes(k) = A_sym;
    symbol_bits{k} = key;
    idx = (2*k-2)*samples_per_bit + 1 : (2*k)*samples_per_bit;
    mod_signal_ml(idx) = A_sym * cos(2*pi*f*t(idx));
    digital_symbols(idx) = A_sym; % for visualization of levels
end

% Plot binary bit pairs as labels and multilevel ASK
figure;
subplot(3,1,1);
% show bit pairs over time as text annotations
plot(t, digital_signal, 'k','LineWidth',1);
ylim([-0.5 1.5]);
title('Original Binary Data (single-bit view)');
xlabel('Time (s)'); ylabel('Bit');

subplot(3,1,2);
% plot symbol amplitude levels (stair)
plot(t, digital_symbols, 'b','LineWidth',2);
ylim([0 max(symbol_amplitudes)+1]);
title('Symbol Amplitudes (mapped from bit pairs)');
xlabel('Time (s)'); ylabel('Amplitude (symbol level)');
hold on;
% annotate bit-pair labels at symbol centers
for k=1:num_symbols
    t_center = mean(((2*k-2)*samples_per_bit +1 : (2*k)*samples_per_bit)/samples_per_bit)/bit_rate;
    text(t_center, symbol_amplitudes(k)+0.2, symbol_bits{k}, 'HorizontalAlignment','center');
end
hold off;

subplot(3,1,3);
% plot multilevel ASK modulated signal
plot(t, mod_signal_ml, 'LineWidth',1);
title('Multi-Level ASK Modulated Signal');
xlabel('Time (s)'); ylabel('Amplitude');
ylim([-(max(symbol_amplitudes)+1) (max(symbol_amplitudes)+1)]);

% Legend figure: show mapping table visually
figure('Name','Mapping');
bar(1:4, [1 2 3 4]);
xticks(1:4); xticklabels({'00','01','10','11'});
ylabel('Amplitude'); title('Bit-pair to Amplitude Mapping');
