# Projet Devops

## Introduction

Ce projet utilise la méthodologie GitFlow pour organiser le développement et assurer une gestion efficace des versions. GitFlow est un modèle de workflow Git qui définit un ensemble rigide de branches et de règles pour faciliter le développement parallèle, la gestion des versions, et les déploiements.

## GitFlow Utilisé

### Branches Principales

- `main` : Contient le code en production. Toutes les nouvelles versions finales sont fusionnées dans cette branche.
- `develop` : Branche de développement principal. Toutes les fonctionnalités sont fusionnées ici avant d'être intégrées dans `main`.

### Branches de Support

- `feature/` : Utilisée pour développer de nouvelles fonctionnalités. Nom de branche typique : `feature/nom_fonctionnalite`.
- `bugfix/` : Pour les corrections de bugs sur la branche de développement. Nom de branche typique : `bugfix/nom_bugfix`.
- `release/` : Prépare la prochaine version en production. Nom de branche typique : `release/0.1.0`.
- `hotfix/` : Utilisée pour des corrections urgentes en production. Nom de branche typique : `hotfix/nom_hotfix`.

## Flux de Travail

1. **Développement de Fonctionnalités** : Commencez par créer une branche `feature/` à partir de `develop`.
2. **Préparation de la Release** : Une fois les fonctionnalités terminées, créez une branche `release/` à partir de `develop`.
3. **Hotfixes** : Si un bug est trouvé en production, créez une branche `hotfix/` à partir de `main`.
4. Après la révision, fusionnez `feature/` dans `develop`, `release/` dans `main` et `develop`, et `hotfix/` dans `main` et `develop`.

## Règles de Protection de Branches

- **Protection de `main` et `develop`** : Ces branches sont protégées. Les Pull Requests sont nécessaires pour les modifications, avec des revues de code obligatoires.
- **Tests CI** : Toute fusion dans `main` et `develop` nécessite le passage réussi des tests d'intégration continue (CI).
