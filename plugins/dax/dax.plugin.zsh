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
alias gjy='ssh gjy@192.168.31.113'
alias lwarp="lwarpmk print && lwarpmk html && lwarpmk limages"
alias rnm='python3 ~/dotfiles/myrename.py'
alias pyin='pip install'
alias ytd='yt-dlp --cookies-from-browser Vivaldi -N 5'
export LC_ALL=zh_CN.UTF-8
alias ls=eza
alias bat="bat --theme 'Monokai Extended Light'"
if alias run-help >/dev/null 2>&1; then
  unalias run-help
fi
autoload run-help
alias help=run-help
alias ytdann='yt-dlp --cookies-from-browser Vivaldi -N 5 -f 137+140'

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
alias edax="vim /Users/dax/.oh-my-zsh/custom/plugins/dax/dax.plugin.zsh"
alias pipup="pip install --upgrade pip"

# mactex
# alias sudo='sudo '
alias tup="sudo tlmgr update --self | sudo tlmgr update --all"
alias tfont="sudo tlmgr conf texmf OSFONTDIR /System/Library/AssetsV2/com_apple_MobileAsset_Font7"

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
alias gswo="git switch --orphan"
alias gcoo="git checkout --orphan"
alias grro="git remote remove origin"
function grao() {
    local repo_name=$1
    if [ -z "$repo_name" ]; then
        echo "Usage: grao <repository-name>"
        return 1
    fi
    git remote add origin git@github.com:daxmate/$repo_name
    echo "Remote 'origin' added for repository '$repo_name'"
}

# forgit
export FORGIT_FZF_DEFAULT_OPTS="
--exact
--border
--cycle
--reverse
--height '80%'
"
source /Users/dax/.oh-my-zsh/custom/plugins/dax/base24-one-black.sh
# vim
alias dvim="nvim -c 'set background=dark'"

# tmux
# 检查是否已经在一个 tmux 会话中
# if [[ -z "$TMUX" ]]; then
  # 如果没有在 tmux 会话中，检查是否有其他会话
  # if ! tmux list-sessions 2>/dev/null | grep -q .; then
    # 如果没有任何 tmux 会话，启动新的 tmux 会话
    # tmux new-session -d -s default
  # fi
  # 无论如何都附加到 tmux 会话（包括新会话或已有会话）
  # tmux attach-session -t default
# fi
