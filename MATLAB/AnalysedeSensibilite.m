% --- Analyse de sensibilité de la VAN par taux d'actualisation ---

% 1. Données de flux (2025 à 2044)
elect = [44387809.64, 45016512.84, 45645216.03, 46273919.22, 46902622.41, ...
         47531325.61, 48160028.8, 48788731.99, 49417435.19, 50046138.38, ...
         50674841.57, 51303544.77, 51932247.96, 52560951.15, 53189654.34, ...
         53818357.54, 54447060.73, 55075763.92, 55704467.12, 56333170.31];

gaz = [11894563.27, 11612122, 11567409.08, 11284967.82, 11240254.9, ...
       10957813.63, 10913100.72, 10630659.45, 10585946.53, 10303505.26, ...
       10258792.35, 9976351.08, 9931638.16, 9649196.9, 9604483.98, ...
       9322042.71, 9277329.8, 8994888.53, 8950175.61, 8667734.34];

fioul = [7193231.97, 7368018.36, 7542729.7, 7717501.43, 7892287.82, ...
         8066999.16, 8241770.88, 8416557.27, 8591268.61, 8766040.34, ...
         8940826.73, 9115538.06, 9290309.79, 9465096.18, 9639807.52, ...
         9814579.25, 9989365.63, 10164076.97, 10338848.7, 10513635.09];

petrole = [1267083.76, 1142690.58, 1186979.08, 1439644.66, 1315251.48, ...
           1359539.97, 1612205.55, 1487812.37, 1532100.87, 1784766.44, ...
           1660373.26, 1704661.76, 1957327.33, 1832934.15, 1877222.65, ...
           2129888.23, 2005495.05, 2049783.54, 2302449.12, 2178055.94];

bois = [5467620.69, 5500036.99, 5532453.28, 5564869.58, 5597285.87, ...
        5629702.16, 5662118.46, 5694534.75, 5726951.05, 5759367.34, ...
        5791783.64, 5824199.93, 5856616.23, 5889032.52, 5921448.81, ...
        5953865.11, 5986281.4, 6018697.7, 6051113.99, 6083530.29];

% 2. Taux d'actualisation (0% à 5% par pas de 0.1%)
taux = 0:0.001:0.05;
n = length(taux);
nPeriode = length(elect);

% 3. Préparer les tableaux de résultats
VAN_elec = zeros(1, n);
VAN_gaz = zeros(1, n);
VAN_fioul = zeros(1, n);
VAN_petrole = zeros(1, n);
VAN_bois = zeros(1, n);

% 4. Calcul des VAN pour chaque taux
for i = 1:n
    r = taux(i);
    d = (1 + r).^(1:nPeriode); % vecteur d'actualisation

    VAN_elec(i) = sum(elect ./ d);
    VAN_gaz(i) = sum(gaz ./ d);
    VAN_fioul(i) = sum(fioul ./ d);
    VAN_petrole(i) = sum(petrole ./ d);
    VAN_bois(i) = sum(bois ./ d);
end

% 5. Tracer les courbes
figure;
plot(taux*100, VAN_elec, 'b-', 'LineWidth', 2); hold on;
plot(taux*100, VAN_gaz, 'r-', 'LineWidth', 2);
plot(taux*100, VAN_fioul, 'm-', 'LineWidth', 2);
plot(taux*100, VAN_petrole, 'k-', 'LineWidth', 2);
plot(taux*100, VAN_bois, 'g-', 'LineWidth', 2);
grid on;

xlabel('Taux d''actualisation (%)');
ylabel('VAN (€)');
title('Analyse de sensibilité de la VAN (2025–2044)');
legend('Électricité', 'Gaz naturel', 'Fioul', 'Pétrole', 'Bois', 'Location', 'northeast');

% 6. Afficher quelques résultats dans la console
fprintf('--- VAN à taux 0%% ---\n');
fprintf('Électricité : %.2f €\n', VAN_elec(1));
fprintf('Gaz naturel : %.2f €\n', VAN_gaz(1));
fprintf('Fioul       : %.2f €\n', VAN_fioul(1));
fprintf('Pétrole     : %.2f €\n', VAN_petrole(1));
fprintf('Bois        : %.2f €\n', VAN_bois(1));

fprintf('\n--- VAN à taux 5%% ---\n');
fprintf('Électricité : %.2f €\n', VAN_elec(end));
fprintf('Gaz naturel : %.2f €\n', VAN_gaz(end));
fprintf('Fioul       : %.2f €\n', VAN_fioul(end));
fprintf('Pétrole     : %.2f €\n', VAN_petrole(end));
fprintf('Bois        : %.2f €\n', VAN_bois(end));
