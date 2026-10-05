# Modélisation et Commande d'un Pendule Rigide

Ce dépôt illustre les étapes de modélisation et de contrôle d'un système de pendule rigide monté sur un arbre motorisé horizontal. Les travaux s'appuient sur **MATLAB et Simulink** pour concevoir et tester différentes lois de commande.

L'étude est structurée autour de trois approches progressives :
- **MIL (Model In the Loop)** : Mise en équation fondamentale de la dynamique de la partie opérative.
- **SIL (Software In the Loop)** : Simulation logicielle pour l'élaboration de la commande (correcteur PID de vitesse, commande linéarisante par bouclage).
- **HIL (Hardware In the Loop)** : Identification des paramètres réels sur la maquette (frottements, inertie, balourd) et comparaison de correcteurs sur le matériel (PID de position et retour tachymétrique).

## 📁 Contenu du dépôt

Le dépôt est organisé avec les fichiers suivants :

### 📄 Documentation
- `TP_Pendule_Rigide.pdf` : Rapport complet de l'étude détaillant la modélisation mathématique, les schémas Simulink, l'identification des paramètres matériels et l'analyse des résultats expérimentaux.

### 💻 Simulation Logicielle (SIL)
- `SIL.m` : Script d'initialisation chargeant les paramètres théoriques du moteur (résistance, inductance, constantes de couple) et du pendule.
- `SIL1.slx`, `SIL2.slx`, `SIL3.slx` : Modèles Simulink utilisés pour analyser le moteur à vide, régler l'asservissement en vitesse et tester la commande linéarisante face à la gravité.

### ⚙️ Tests sur Matériel (HIL)
- `HIL.m` : Script d'initialisation contenant les paramètres physiques affinés et identifiés expérimentalement sur le banc d'essai (frottements visqueux réels, inertie équivalente, compensation de la *dead zone*).
- `HIL_simu.slx` : Modèle Simulink de simulation simulant le comportement réel pour pré-régler les correcteurs.
- `HIL_reel.slx` : Modèle Simulink déployé sur le système physique pour piloter l'actionneur en temps réel.

## 🚀 Comment utiliser ce dépôt ?

1. Ouvrez **MATLAB**.
2. **Pour l'étude purement théorique (SIL) :**
   - Exécutez le script `SIL.m` pour charger les variables dans le *Workspace*.
   - Ouvrez et lancez les fichiers `SIL1.slx`, `SIL2.slx` ou `SIL3.slx`.
3. **Pour l'étude matérielle (HIL) :**
   - Exécutez le script `HIL.m` pour charger les variables réelles.
   - Ouvrez et simulez `HIL_simu.slx` ou connectez-vous à la carte avec `HIL_reel.slx`.

## 👥 Auteurs
- **Timm CLAVERIE** & **Julien DUBUC**
- *SeaTech - École d'Ingénieurs, Parcours SYSMER (2026-2027)*
