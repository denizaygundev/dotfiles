# Oh My Zsh Configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# Plugins
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Development Aliases
alias a='php artisan'
alias vapor="php vendor/bin/vapor"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias storm="phpstorm"
alias c="composer"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load fzf key bindings and fuzzy completion (used by Zoxide)
source <(fzf --zsh)

# Development Tools Paths
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"  # Base PATH
export PATH="$PATH:/Applications/Code.app/Contents/Resources/app/bin"  # VS Code
export PATH="$PATH:/Applications/PhpStorm.app/Contents/MacOS"  # PhpStorm
export PATH="$PATH:$HOME/.composer/vendor/bin"  # Composer
export PATH="/usr/local/opt/postgresql@17/bin:$PATH"  # PostgreSQL
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"  # MySQL
export FZF_DEFAULT_OPTS='--color=fg:#546178,bg:-1,hl:#4491E6
--color=fg+:#e5e5e5,bg+:-1,hl+:#4491E6
--color=info:#e5e5e5,prompt:#0ED090,pointer:#e5e5e5
--color=marker:#0ED090,spinner:#af5fff,header:#af5fff'

# Herd PHP Configuration
export HERD_PHP_82_INI_SCAN_DIR="/Users/denizaygun/Library/Application Support/Herd/config/php/82/"
export HERD_PHP_83_INI_SCAN_DIR="/Users/denizaygun/Library/Application Support/Herd/config/php/83/"
export HERD_PHP_84_INI_SCAN_DIR="/Users/denizaygun/Library/Application Support/Herd/config/php/84/"
export PATH="/Users/denizaygun/Library/Application Support/Herd/bin/:$PATH"

# Node/PNPM Configuration
export PNPM_HOME="/Users/denizaygun/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# NVM Configuration (Herd)
export NVM_DIR="/Users/denizaygun/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Docker Desktop
source /Users/denizaygun/.docker/init-zsh.sh || true

# Load Herd Configuration
[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Shell Completion
autoload -U compinit && compinit

# Zoxide (cd alternative) has to be called after compinit
eval "$(zoxide init zsh)"
