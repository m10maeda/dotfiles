# 日本語を使用
export LANG=ja_JP.UTF-8

# 履歴に重複を表示しない
setopt histignorealldups

# 重複パスを登録しない
typeset -U path cdpath fpath manpath

# PROMPT 変数内で変数を参照可能にする
setopt PROMPT_SUBST

# 色の使用
autoload -Uz colors && colors

# Homebrew でインストールしたアプリケーションに依存した設定
if type brew &>/dev/null; then
    # For zsh-completions
    if [ -d $(brew --prefix)/share/zsh-completions ]; then
        # zsh-completions を fpath に追加
        FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

        # 補完機能の有効化
        autoload -Uz compinit && compinit
    fi

    # For Git
    if [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
        # git-prompt の読み込み
        source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

        # dirty state（tracked file の更新の有無と staged の状況）を表示
        GIT_PS1_SHOWDIRTYSTATE=true
        # stash 状態を表示
        GIT_PS1_SHOWSTASHSTATE=true
        # untracked file の有無を表示
        GIT_PS1_SHOWUNTRACKEDFILES=true
        # HEAD とその upstream との間の比較情報を表示
        GIT_PS1_SHOWUPSTREAM="auto"
        # dirty state を色付けして表示
        GIT_PS1_SHOWCOLORHINTS=true

        # プロンプトに Git 情報を表示
        export PS1='${fg[green]}%n@%m${reset_color}:${fg[blue]}%~${reset_color}$(__git_ps1 " (%s)")
%# '
    fi
fi

# For anyenv
if type anyenv &>/dev/null; then
    eval "$(anyenv init -)"
fi

# Alias
alias ls='ls -FGa'
