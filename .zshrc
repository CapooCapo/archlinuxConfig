export PATH="$HOME/.cargo/bin:$PATH"
[[ -f "$ZDOTDIR/.ohmyzsh" ]] && source "$ZDOTDIR/.ohmyzsh"
[[ -f "$ZDOTDIR/.alias" ]] && source "$ZDOTDIR/.alias"

export EZA_ICONS=always
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
export HIST_IGNORE_PATTERN="clear|sudo *"

bindkey '^ ' autosuggest-accept

[[ -f "/usr/bin/fzf" ]] && eval "$(/usr/bin/fzf --zsh)"
if [[ -f "/usr/bin/zoxide" ]]; then
    eval "$(/usr/bin/zoxide init zsh)"
else
    eval "$(zoxide init zsh)"
fi


if [[ -z $TMUX ]]; then
    fastfetch
fi
alias ll='eza -l --git'
alias la='eza -la'
alias lt='eza -lT --level=2'
alias ls="eza --icons=always --group-directories-first"

# language
# go
export GOPATH="$HOME/go"
export PATH="$HOME/go/bin:$HOME/.local/share/nvim/mason/bin:$PATH"

#
#
#PROMPT=$'-> ( \uF07B ) %~  '
#
#
#
# Bật thay biến trong prompt
# --- Màu & random ---
typeset -a PALETTE
PALETTE=("#b4befe" "#89b4fa" "#cba6f7" "#a6e3a1" "#fab387" "#f9e2af" "#f38ba8" "#94e2d5")
PROMPT_TEXT="${CTP_TEXT:-#cdd6f4}"   # màu chữ chính (KHÔNG đen)

precmd() {
  local i=$(( RANDOM % ${#PALETTE[@]} ))
  PROMPT_ACCENT="${PALETTE[i]}"     # ngoặc + mũi tên
  PROMPT_ICON="${PALETTE[i]}"       # icon
}

# --- Icon theo ngữ cảnh ---
ctx_icon() {
  if git rev-parse --is-inside-work-tree &>/dev/null; then
    printf "\U000F02A2"   # repo
  elif [[ $PWD == "$HOME/Downloads"* ]]; then
    printf "\U000F0162"   # downloads
  else
    printf "\uF07B"       # folder
  fi
}

# --- Segments KHÔNG dùng %f giữa chừng ---
git_branch_segment() {
  local b
  b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null) || return
  print -r -- " %F{${PROMPT_ACCENT}}- ( %F{${PROMPT_TEXT}}$b%F{${PROMPT_ACCENT}} )"
}

current_dir_segment() {
  if [[ $PWD == "$HOME" ]]; then
    # icon home + "~"
    print -r -- "%F{${PROMPT_ACCENT}}( %F{${PROMPT_ICON}}$(printf '\uE617')%F{${PROMPT_ACCENT}} ) %F{${PROMPT_TEXT}}~"
  else
    local base=${PWD##*/}
    print -r -- "%F{${PROMPT_ACCENT}}( %F{${PROMPT_ICON}}$(ctx_icon)%F{${PROMPT_ACCENT}} ) %F{${PROMPT_TEXT}}$base"
  fi
}

# --- PROMPT 1 dòng, không rơi về đen ---
setopt PROMPT_SUBST
PROMPT='%F{${PROMPT_ACCENT}}> %f%F{${PROMPT_ACCENT}}$(current_dir_segment)$(git_branch_segment)%f '
#      ^ chỉ %f đầu/cuối để reset sạch; mọi phần đều đã set màu tường minh

source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
