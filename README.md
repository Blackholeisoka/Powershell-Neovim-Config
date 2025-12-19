<img width="1280" height="720" alt="Image" src="https://github.com/user-attachments/assets/021f4e50-43b4-415f-8a08-6d1ca93496de" />
Theme / Font : lunaperche / OxProto Nerd Font (normal)

# Configuration PowerShell 7 + Neovim
🎯 Installation rapide

powershell# 1. Cloner le repo - ```git clone https://github.com/[votre-user]/[votre-repo].git $env:USERPROFILE\.config```

## 2. Créer les liens symboliques
```
cmd /c mklink /D "$env:LOCALAPPDATA\nvim" "$env:USERPROFILE\.config\nvim"
cmd /c mklink "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" "$env:USERPROFILE\.config\powershell\Microsoft.PowerShell_profile.ps1"
```
## 3. Installer les plugins Neovim
nvim +PackerSync +qall
📦 Prérequis à installer manuellement
Obligatoires

PowerShell 7+ - Télécharger
Neovim 0.9+ - ```winget install Neovim.Neovim```
Git - ```winget install Git.Git```
Nerd Font - Recommandé: JetBrainsMono Nerd Font

Pour Neovim (selon vos plugins)

Node.js - ```winget install OpenJS.NodeJS```
Python 3 + pip - ```winget install Python.Python.3.12```
Ripgrep - ```winget install BurntSushi.ripgrep.MSVC```
fd - ```winget install sharkdp.fd```
Lazygit - ```winget install JesseDuffield.lazygit```

Language Servers (LSP)
powershell# PowerShell LSP
```
Install-Module -Name PowerShellEditorServices
```
## Lua LSP
```
winget install sumneko.lua-language-server
```
📁 Structure du repo
```
.
├── nvim/              # Config Neovim complète
│   ├── lua/
│   │   └── config/
│   └── init.lua
├── powershell/        # Profils PowerShell
│   └── Microsoft.PowerShell_profile.ps1
├── profiles/          # Profils additionnels
└── README.md
⚙️ Ce qui est inclus
✅ Configuration Neovim complète
✅ Plugins et keymaps
✅ LSP configs
✅ Thème Oh-My-Posh
✅ Profil PowerShell
✅ Lazy.nvim / Packer configs
🔧 Post-installation
```
Ouvrir PowerShell et vérifier le profil
Lancer Neovim - les plugins s'installent automatiquement
Vérifier les LSP - :checkhealth dans Neovim
Configurer la font dans votre terminal

🚨 À ne PAS commiter
```
lazy-lock.json / packer_compiled.lua (optionnel)
Tokens/clés API personnels
Données de cache
```
📝 Notes

Les chemins sont adaptés pour Windows
Utiliser PowerShell 7 (pas Windows PowerShell 5.1)
Vérifier les droits d'exécution : ```Set-ExecutionPolicy RemoteSigned -Scope CurrentUser```

🆘 Troubleshooting
Plugins Neovim ne se chargent pas → Vérifier le lien symbolique nvim
Profil PowerShell ignoré → Vérifier $PROFILE pointe vers le bon fichier
LSP ne fonctionne pas → Installer les language servers manuellement
Thème manquant → Installer Oh-My-Posh : winget install JanDeDobbeleer.OhMyPosh

Licence: MIT
