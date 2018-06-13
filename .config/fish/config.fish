# anyenv
set --export PATH  "$HOME/.anyenv/bin" $PATH

# pyenv
set -x PYENV_ROOT "$HOME/.anyenv/envs/pyenv"
set -x PATH $PATH "$HOME/.anyenv/envs/pyenv/bin"
set -gx PATH $PYENV_ROOT/shims $PATH
set -gx PYENV_SHELL fish

# rbenv
set -x RBENV_ROOT "$HOME/.anyenv/envs/rbenv"
set -x PATH $PATH "$HOME/.anyenv/envs/rbenv/bin"
set -gx PATH $RBENV_ROOT/shims $PATH
set -gx RBENV_SHELL fish

# goenv
set -x GOENV_ROOT "$HOME/.anyenv/envs/goenv"
set -x PATH $PATH "$HOME/.anyenv/envs/goenv/bin"
set -gx PATH $GOENV_ROOT/shims $PATH
set -gx GOENV_SHELL fish

# ndenv
set -x NDENV_ROOT "$HOME/.anyenv/envs/ndenv"
set -x PATH $PATH "$HOME/.anyenv/envs/ndenv/bin"
set -x PATH $NDENV_ROOT/shims $PATH

 #cdコマンド
function cd
  builtin cd $argv
  ls -la
end

# コマンドエイリアス
alias d="cd ~/desktop"
alias rmd="rm -rf"
alias md="mkdir"
alias mf="touch"
alias ls="ls -la"
alias cat="cat -n"

# Gitエイリアス
alias ginit="git init"                    # git管理を始める
alias gs="git status"                     # 前回のコミットと比較して変更されたファイルを表示する
alias gdif="git diff"                     # 差分を確認する
alias gdif-st="git diff --cached"         # ステージングに上げたファイルを確認する
alias gdif-h="git diff HEAD^"             # 一つ前のコミットとの差分を確認する
alias gdiff="git diff --name-only HEADE^" # 差分ファイルを表示する
alias grlog="git reflog"                  # コミットのログなどを確認する
alias glog="git log --oneline --decorate --graph"   # コミットログをグラフで表示する
alias gbr="git branch"                    # ブランチを確認する
alias gbr-r="git branch -r"               # リモートブランチを確認する
alias gco="git checkout"                  # ブランチを変更する
alias gco-b="git checkout -b"             # ブランチを作成し、作成したブランチに切り替える
alias gbr-d="git branch -d"               # ブランチを削除する
alias ga="git add"
alias ga-p="git add -p"                   # コミットする単位を小分けにする
alias gc="git commit"
alias gc-m="git commit -m"              # コミットメッセージ付きでコミットする
alias gc-e="git commit --allow-empty -m 'Make pull request'"  # 空のコミットを作成する
alias grmt="git remote"                   # リモートリポジトリ一覧を表示する
alias grmta="git remote add origin"       # リモートリポジトリを追加する
alias grmtp="git push -u origin"          # リモートリポジトリにプッシュする
alias gpul="git pull origin"
alias gpus="git push origin"

# keybind
function fish_user_key_bindings
  #peco
  bind \cr peco_select_history
  bind \cf peco_change_directory
end

