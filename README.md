# Rapport de stage d’excellence

## Économie de l’énergie et de l’environnement

Ce dépôt contient l’ensemble des travaux réalisés dans le cadre de mon **stage d’excellence** effectué au **Laboratoire GAEL (Grenoble Applied Economics Laboratory)**, portant sur l’analyse technico-économique des réseaux de chaleur urbains et l’intégration des énergies renouvelables, sous incertitude.

### 👤 Auteur

**Mohamed FOFANA**
L2 MIASHS — Parcours Économie
Université Grenoble Alpes

### 🏛️ Structure d’accueil

**Laboratoire GAEL** (Grenoble Applied Economics Laboratory)
CNRS – INRAE – Université Grenoble Alpes – Grenoble INP

### 👩‍🏫 Encadrement

* **Mme Oana Ionescu**, Maître de conférences — Grenoble INP - UGA
* **M. Benoît Lemaire**, Maître de conférences — Université Grenoble Alpes

### 📅 Période du stage

**19 mai 2025 – 19 juillet 2025**

---

## 🎯 Objectifs du stage

Ce stage s’inscrit dans le cadre du **projet européen RES4City**, dont l’objectif est d’analyser et d’optimiser l’intégration des **énergies renouvelables dans les réseaux de chaleur urbains**.

Le travail vise à :

 * Étudier la transition vers un mix énergétique durable dans les réseaux de chaleur

 * Évaluer la rentabilité économique des différentes sources d’énergie

 * Intégrer les incertitudes économiques (prix, coûts, taux d’actualisation)

 * Appliquer des outils issus de la finance quantitative (Monte Carlo, théorie du portefeuille)

---

## 🗂️ Structure du dépôt

```bash

GAEL_Stage_d-Excellence/
│
│ ├── Articles/
│     └── Articles scientifiques utilisés pour la revue de littérature
│
│ ├── Fichiers_EXCEL/
│     └── Données, régressions, simulations Monte Carlo, analyses de sensibilité
│
│ ├── MATLAB/
│     └── Scripts d’analyse statistique, régressions et optimisation
│
│ ├── Python/
│     └── Analyses de données, visualisations, Monte Carlo, régressions
│
│ ├── Mon_Rapport_De_Stage.pdf
│     └── Rapport académique complet (document principal)
│
│ ├── Planning.pdf
│     └── Planning prévisionnel du stage
│
│ ├── .gitignore
│     └── Fichiers ignorés (ex : documents personnels)
│
│ └── README.md

```

## 📚 Contenu du rapport

### 1. État de l’art

* Réseaux de chaleur urbains
* Énergies renouvelables et transition énergétique
* Théorie moderne du portefeuille (Markowitz) appliquée à l’énergie

### 2. Analyse de données

* Collecte de données (INSEE, SDES, statistiques nationales)
* Statistique descriptive et visualisation
* Régressions linéaires simples et multiples
* Analyse des relations **prix – consommation – prix de vente de la chaleur**

### 3. Analyse du risque et optimisation

* Simulation de Monte Carlo (2000 itérations)
* Distribution de la Valeur Actuelle Nette (VAN)
* Mesure du risque : variance, écart-type, skewness, kurtosis
* Risque de perte 
* Application de la théorie moderne du portefeuille (Markowitz)
* Construction de la frontière efficiente
* Optimisation risque–rendement du mix énergétique

### 4. Analyse de sensibilité

* Sensibilité de la VAN au **taux d’actualisation (0 % – 5 %)**
* Comparaison des profils de risque par source d’énergie
* Identification des énergies robustes à long terme

---

## 🛠️ Outils et technologies utilisés

* **Python**

  * `numpy`, `pandas`, `matplotlib`, `statsmodels`, `scipy`
  * Régressions, tests statistiques, Monte Carlo, visualisation

* **Matlab**

  * Modélisation statistique
  * Régressions (`fitlm`), analyses statistiques, graphiques 
  * Analyse de sensibilité

* **Excel**

  * Statistique descriptive
  * Régressions
  * Simulations Monte Carlo
  * Tableaux de données et graphiques

* **LaTeX**

  * Rédaction scientifique professionnelle

---

## 📈 Méthodes statistiques mobilisées

* Statistique descriptive et inférentielle
* Régression linéaire simple et multiple
* Tests :

  * Student
  * Fisher (ANOVA)
  * Shapiro-Wilk (normalité)
* Simulation Monte Carlo
* Théorie du portefeuille (variance–covariance, diversification)

---

## 🔑 Résultats clés

* Identification d’un **mix énergétique économiquement viable** à long terme
* Mise en évidence de la **robustesse de l’électricité et du bois** face à l’actualisation
* Quantification explicite du **risque financier** via des distributions de VAN
* Application concrète de méthodes de **finance quantitative à l’économie de l’énergie**

---

## 📄 Fichier principal

* `Mon_Rapport_De_Stage.pdf`
  
Rapport académique complet détaillant la méthodologie, les résultats et les conclusions.
---

## 🎓 Compétences développées

* Analyse économique appliquée
* Data analysis & visualisation
* Modélisation statistique
* Finance quantitative et gestion du risque
* Rédaction scientifique (LaTeX)
* Travail de recherche académique

---

## 📌 Mots-clés

Économie de l’énergie · Réseaux de chaleur · Monte Carlo · VAN ·
Théorie du portefeuille · Analyse de sensibilité · Data science · Énergies renouvelables
