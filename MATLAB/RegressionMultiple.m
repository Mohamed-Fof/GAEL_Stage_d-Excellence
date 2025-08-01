% =========================================================================
% RÉGRESSION LINÉAIRE MULTIPLE SUR LA CONSOMMATION D'ÉNERGIE
% =========================================================================

% -----------------------------
% Étape 1 : Définir les données
% -----------------------------

% Variable dépendante Y : Consommation totale (en kWh par exemple)
Y = [40562.67; 42917.77; 41145.09; 39601.06; 38995.11; ...
     37851.90; 40038.57; 33923.60; 32060.60; 34059.37];

% Variables indépendantes X : prix des différentes sources d'énergie
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

% Noms des variables explicatives (colonnes de X)
noms_X = {'Electricite', 'Gaz_naturel', 'Fioul_domestique', 'Petrole', 'Bois'};

% -------------------------------------------------------------
% Étape 2 : Convertir les données en tableau pour utiliser fitlm
% -------------------------------------------------------------

% Créer une table avec les noms de colonnes
T = array2table(X, 'VariableNames', noms_X);

% Ajouter la variable dépendante Y à la table
T.Consommation = Y;

% ------------------------------------------
% Étape 3 : Réaliser la régression linéaire
% ------------------------------------------

% Modèle de régression linéaire multiple
mdl = fitlm(T, 'Consommation ~ Electricite + Gaz_naturel + Fioul_domestique + Petrole + Bois');

% Afficher les résultats du modèle
disp('--- RÉSUMÉ DU MODÈLE ---');
disp(mdl);

% ----------------------------------
% Étape 4 : ANOVA (analyse de variance)
% ----------------------------------
disp('--- ANOVA ---');
disp(anova(mdl, 'summary'));

% --------------------------
% Étape 5 : Coefficients du modèle
% --------------------------
disp('--- COEFFICIENTS ---');
disp(mdl.Coefficients);

% --------------------------
% Étape 6 : Graphiques
% --------------------------

% Graphique des résidus en fonction des valeurs ajustées
figure;
plotResiduals(mdl, 'fitted');
title('Résidus vs Valeurs ajustées');

% Graphique général du modèle (avec droites de régression)
figure;
plot(mdl);
title('Régression linéaire multiple');

% =========================================================================
% Fin du script
% =========================================================================