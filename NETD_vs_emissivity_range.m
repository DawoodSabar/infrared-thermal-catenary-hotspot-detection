% NETD vs. emissivity range
% Conference Paper: 
% Research on Infrared Thermal Imaging Sensor for Overhead Catenary Hot
Spot Detection 
% Author: Dawood Sabar

% Data inferred from Section 3.3 and Variable Emissivity scenario
emissivity = [0.3, 0.5]; % Emissivity range for metallic conductors
netd = [25, 15]; % NETD in mK (inferred: 25 mK at 0.3, 15 mK at 0.5)

% Create line plot with markers
figure('Position', [100, 100, 800, 600]);
hold on;
plot(emissivity, netd, '-o', 'LineWidth', 2, 'MarkerSize', 8, 'DisplayName', 'NETD');

% Annotate data points
for i = 1:length(emissivity)
    text(emissivity(i), netd(i)+0.5, sprintf('%d mK', netd(i)), 'FontSize', 10);
end

% Plot settings
xlabel('Emissivity', 'FontSize', 12);
ylabel('Noise Equivalent Temperature Difference (mK)', 'FontSize', 12);
legend('show', 'Location', 'northeast');
grid on;
set(gca, 'FontSize', 12);
xlim([0.25 0.55]);
ylim([10 30]);
hold off;

% Save plot (optional)
% print('netd_vs_emissivity', '-dpng', '-r300');