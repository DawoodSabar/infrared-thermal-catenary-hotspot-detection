% output voltage vs. hot spot temperature
% Conference Paper: 
% Research on Infrared Thermal Imaging Sensor for Overhead Catenary Hot
Spot Detection 
% Author: Dawood Sabar

% Data from Sections 3.2 and 3.3
hot_spot_temps = [350, 390]; % Hot spot temperatures in K
output_voltages = [0.58, 0.78]; % Output voltages in V (0.58 V inferred for 350 K)
pixel_threshold = 0.78; % Pixel threshold voltage from Table in Section 3.1

% Create line plot with markers
figure('Position', [100, 100, 800, 600]);
hold on;
plot(hot_spot_temps, output_voltages, '-o', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'Output Voltage');
plot([min(hot_spot_temps)-10, max(hot_spot_temps)+10], [pixel_threshold, pixel_threshold], '--r', 'LineWidth', 1.5, 'DisplayName', 'Pixel Threshold (0.78 V)');

% Annotate data points
for i = 1:length(hot_spot_temps)
    text(hot_spot_temps(i), output_voltages(i)+0.02, sprintf('%.2f V', output_voltages(i)), 'FontSize', 10);
end

% Plot settings
xlabel('Hot Spot Temperature (K)', 'FontSize', 12);
ylabel('Output Voltage (V)', 'FontSize', 12);
legend('show', 'Location', 'northwest');
grid on;
set(gca, 'FontSize', 12);
xlim([340 400]);
ylim([0.5 0.85]);
hold off;

% Save plot (optional)
% print('output_voltage_vs_hot_spot_temp', '-dpng', '-r300');