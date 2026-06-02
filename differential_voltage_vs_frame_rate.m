% Differential voltage vs. frame rate
% Conference Paper: 
% Research on Infrared Thermal Imaging Sensor for Overhead Catenary Hot
Spot Detection 
% Author: Dawood Sabar

% Data from Sections 3.1 and 3.3
frame_rates = [100, 166]; % Frame rate range in Hz
differential_voltage = [0.2, 0.2]; % Differential voltage in V (stable across range)
differential_threshold = 0.2; % Differential voltage threshold from Table in Section 3.1

% Create line plot with markers and shaded region
figure('Position', [100, 100, 800, 600]);
hold on;
plot(frame_rates, differential_voltage, '-o', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Differential Voltage');
plot([min(frame_rates)-10, max(frame_rates)+10], [differential_threshold, differential_threshold], '--r', 'LineWidth', 1.5, 'DisplayName', 'Differential Threshold (0.2 V)');

% Add shaded region for frame rate range
fill([100, 166, 166, 100], [0.15, 0.15, 0.25, 0.25], 'b', 'FaceAlpha', 0.1, 'DisplayName', 'Frame Rate Range (100-166 Hz)');

% Annotate data points
for i = 1:length(frame_rates)
    text(frame_rates(i), differential_voltage(i)+0.01, sprintf('%.2f V', differential_voltage(i)), 'FontSize', 10);
end

% Plot settings
xlabel('Frame Rate (Hz)', 'FontSize', 12);
ylabel('Differential Voltage (V)', 'FontSize', 12);
legend('show', 'Location', 'northeast');
grid on;
set(gca, 'FontSize', 12);
xlim([90 176]);
ylim([0.1 0.3]);
hold off;

% Save plot (optional)
% print('differential_voltage_vs_frame_rate', '-dpng', '-r300');