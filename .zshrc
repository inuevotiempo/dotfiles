# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Projects shortcuts
alias siiup="cd ~/Documentos/Projects/siiup/ && source venv_siiup/bin/activate"
alias finance="cd ~/Documentos/Projects/FinanceWebApp/ && source finance_venv/bin/activate"
alias iglesia="cd ~/Documentos/Projects/IglesiaNuevoTiempo && source env/bin/activate"
alias estadia="cd ~/Documentos/Projects/HandW_SistemaMedico/"
alias estadiadb="pgcli postgresql://postgres:mnRqHDe0DyYsDWCxN1zW@containers-us-west-88.railway.app:6682/railway"


alias run="python manage.py runserver"

# Undervolt
alias undervolt="sudo intel-undervolt"
alias undervoltedit="sudo nano /etc/intel-undervolt.conf"
alias ssdhealth="sudo smartctl -A /dev/nvme0n1"
source ~/powerlevel10k/powerlevel10k.zsh-theme
