# Oh My Zsh Configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="true"

# Plugins
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Development Tools Paths
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"  # Base PATH
export PATH="$PATH:/Applications/Code.app/Contents/Resources/app/bin"  # VS Code
export PATH="$PATH:/Applications/PhpStorm.app/Contents/MacOS"  # PhpStorm
export PATH="$PATH:$HOME/.composer/vendor/bin"  # Composer
export PATH="/usr/local/opt/postgresql@17/bin:$PATH"  # PostgreSQL
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"  # MySQL

# Development Aliases
alias a='php artisan'
alias vapor="php vendor/bin/vapor"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias storm="phpstorm"

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