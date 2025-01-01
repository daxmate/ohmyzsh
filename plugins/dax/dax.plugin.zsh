alias rmfr="rm -fr"
alias rmrf="rm -rf"
alias pip=pip3
alias ui2py="python3 ui2py.py"
alias subrename="python3 ~/dotfiles/subrename.py"
alias py=python3
alias python=python3
alias vim=nvim
alias vi=nvim
alias buildnhk=~/dotfiles/buildnhk.sh
alias dsq='ssh dax@192.168.31.24 -t "export PATH=/opt/bin:/opt/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin && /opt/bin/zsh -l"'
alias lwarp="lwarpmk print && lwarpmk html && lwarpmk limages"
alias rnm='python3 ~/dotfiles/myrename.py'
alias pyin='pip install'
alias ytd='yt-dlp -N 5'
export LC_ALL=zh_CN.UTF-8
alias ls=eza
alias bat="bat --theme 'Monokai Extended Light'"
if alias run-help >/dev/null 2>&1; then
  unalias run-help
fi
autoload run-help
alias help=run-help

# home brew alias
alias b=brew
alias bd="brew doctor"
alias bi="brew info"
alias bin="brew install"
alias brin="brew reinstall"
alias bink="brew install --cask"
alias brink="brew reinstall --cask"
alias bk="brew link"
alias bl="brew list"
alias bo="brew outdated"
alias bs="brew search"
alias bun="brew uninstall"
alias bud="brew update"
alias bug="brew upgrade"

# editing shortcuts
alias eu="nvim ~/Library/Rime/wubi86_user.dict.yaml"
alias ep="nvim ~/Library/Application\ Support/V2RayX/pac/pac.js"
alias eu="nvim ~/Library/Rime/wubi86_user.dict.yaml"
alias ed="nvim '/Users/dax/dotfiles/ohmyzsh/custom/plugins/dax/dax.plugin.zsh'"

# zshrc
alias ez="vim ~/.zshrc"
alias sz="source ~/.zshrc"

# git
alias gpac="echo 'git push' > .git/hooks/post-commit & chmod +x .git/hooks/post-commit"
alias ginit="git init && _git_auto_commit"
function _git_auto_commit(){
	if [[ -d .git ]]; then
		echo 'git push' >> .git/hooks/post-commit
		chmod +x .git/hooks/post-commit
		echo 'added git hooks for post-commit'
	else
		echo 'not a git repository'
	fi
}
alias gswr="gsw review"
alias grro="git remote remove origin"

# forgit
export FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--height '80%'
"

# vim
alias dvim="nvim -c 'set background=dark'"

# tmux
# 检查是否有 tmux 会话
if ! tmux list-sessions 2>/dev/null | grep -q .; then
  # 如果没有任何 tmux 会话，启动新的 tmux 会话
  tmux new-session -d -s default
  tmux attach-session -t default
else
  # 如果有 tmux 会话，附加到第一个会话
  tmux attach-session -t default
fi
