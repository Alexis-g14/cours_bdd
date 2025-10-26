# Linux & BASH
Connaitre les bases du langage de programmation Bash et le fonctionnement des systèmes Linux

## 0. Accéder à un terminal Bash selon votre système
Différentes méthodes pour accéder à un terminal Bash selon que vous utilisez Windows, macOS ou Linux.

---

### 0.1. Utilisateurs Windows
Option recommandée : **WSL (Windows Subsystem for Linux)**
WSL permet d'exécuter une distribution Linux directement dans Windows.

#### Installation de WSL (Windows 10 ou 11)

1. **Ouvrir PowerShell ou cmd en mode administrateur**
2. Exécuter la commande :
   ```bash
   wsl --install -d Ubuntu
   ```
3. Redémarrer l’ordinateur si demandé

---

### 0.2. Utilisateurs macOS
macOS est basé sur Unix, donc Bash est accessible nativement.

Accès au terminal
Ouvrir Terminal via Spotlight (Cmd + Espace, puis taper "Terminal")

Par défaut, le shell est zsh, mais Bash est disponible :
```bash
bash
```
Vous pouvez changer le shell par défaut vers Bash :
```bash
chsh -s /bin/bash
```

---


### 0.3. Utilisateurs Linux
Linux dispose nativement d’un terminal Bash.

Accès
Ouvrir le terminal via le raccourci clavier (Ctrl + Alt + T) ou via le menu

Bash est généralement le shell par défaut

---

### 0.4. Utiliser github codespaces
Conditions:
 - avoir un compte GitHub 
 - utiliser un dépôt compatible

Depuis un dépôt GitHub : 
 - Va sur n’importe quel dépôt (le tien ou un public).
 - Clique sur le bouton <> Code.
 - Sélectionne l’onglet Codespaces.
 - Clique sur Create codespace on main (ou sur une autre branche si tu préfères).

<img width="812" height="661" alt="image" src="https://github.com/user-attachments/assets/80105ae4-a205-47d8-9b97-ae7c461b2932" />

---

