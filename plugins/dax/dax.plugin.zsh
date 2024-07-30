alias rmfr="rm -fr"
alias rmrf="rm -rf"

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
