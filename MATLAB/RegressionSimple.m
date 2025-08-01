% -----------------------------
% Données
% -----------------------------

Y = [40562.67; 42917.77; 41145.09; 39601.06; 38995.11;
     37851.90; 40038.57; 33923.60; 32060.60; 34059.37];

X = [...
    0.170  0.072  0.073  0.127  0.061;
    0.170  0.066  0.065  0.118  0.060;
    0.173  0.067  0.076  0.132  0.060;
    0.177  0.071  0.093  0.143  0.061;
    0.185  0.079  0.095  0.142  0.064;
    0.194  0.073  0.078  0.145  0.065;
    0.198  0.074  0.091  0.149  0.067;
    0.215  0.093  0.149  0.160  0.107;
    0.245  0.111  0.129  0.166  0.106;
    0.252  0.126  0.123  0.172  0.079
];

noms_X = {'Electricite', 'Gaz_naturel', 'Fioul_domestique', 'Petrole', 'Bois'};

% -----------------------------
% Tracés individuels
% -----------------------------
figure;
for i = 1:5
    subplot(2, 3, i);
    
    % Régression simple
    coeffs = polyfit(X(:, i), Y, 1); % Ajustement linéaire
    Y_fit = polyval(coeffs, X(:, i));
    
    % Tracer les points + droite
    scatter(X(:, i), Y, 'filled');
    hold on;
    plot(X(:, i), Y_fit, 'r-', 'LineWidth', 2);
    hold off;
    
    xlabel(noms_X{i});
    ylabel('Consommation');
    title(['Régression : ', noms_X{i}]);
end

sgtitle('Régressions simples : chaque variable vs consommation');