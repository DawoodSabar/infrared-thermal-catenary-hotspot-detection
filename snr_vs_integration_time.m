% SNR vs. Integration Time for Different Scenarios
% Conference Paper: 
% Research on Infrared Thermal Imaging Sensor for Overhead Catenary Hot
Spot Detection 
% Author: Dawood Sabar

% Data from Simulation Scenarios table (Section 3.2)
scenarios = {'Baseline', 'Low Contrast', 'High-Speed', 'High Noise', 'Variable Emissivity'};
integration_times = [6, 6, 3, 6, 3]; % Integration time in ms
snr_values = [20, 15, 16, 18, 19]; % SNR in dB

% Create scatter plot
figure('Position', [100, 100, 800, 600]);
hold on;
for i = 1:length(scenarios)
    scatter(integration_times(i), snr_values(i), 50, 'filled', 'DisplayName', scenarios{i});
    text(integration_times(i) + 0.1, snr_values(i) + 0.5, sprintf('%d dB', snr_values(i)), 'FontSize', 10);
end

% Plot settings
xlabel('Integration Time (ms)', 'FontSize', 12);
ylabel('Signal-to-Noise Ratio (dB)', 'FontSize', 12);
legend('show', 'Location', 'northwest');
grid on;
set(gca, 'FontSize', 12);
xlim([2 7]);
ylim([10 25]);
hold off;

% Save plot (optional)
% print('snr_vs_integration_time', '-dpng', '-r300');