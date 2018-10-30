# [CLI: improved](https://remysharp.com/2018/08/23/cli-improved)
# [一些命令行工具的增强版](https://www.kawabangga.com/posts/3084)
# [命令行：增强版](https://linux.cn/article-10171-1.html)

# bat > cat
# https://github.com/sharkdp/bat
alias cat='bat'

# htop > top
# http://hisham.hm/htop/
alias top="htop"

# glances
# https://github.com/nicolargo/glances

# tldr > man
# https://tldr.sh/
alias help='tldr'

# fd > find
# https://github.com/sharkdp/fd/

# ncdu > du
# https://dev.yorhel.nl/ncdu
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
# nnn
# https://github.com/jarun/nnn

# ack || ag || rg(ripgrep) > grep
# https://beyondgrep.com/
# https://github.com/ggreer/the_silver_searcher
# https://github.com/BurntSushi/ripgrep
# ~/.ackrc
--type-set=md=.md,.mkd,.markdown
--pager=less -FRX

# csvkit > awk
# https://csvkit.readthedocs.io/en/1.0.3/
# https://github.com/wireservice/csvkit

# fasd || z || autojump > cd
# https://github.com/clvv/fasd
# https://github.com/rupa/z
# https://github.com/wting/autojump
# https://olivierlacan.com/posts/cd-is-wasting-your-time/

# icdiff > git diff
# https://www.jefftk.com/icdiff
# https://github.com/jeffkaufman/icdiff

# prettyping || gping > ping
# https://github.com/denilsonsa/prettyping
# http://denilson.sa.nom.br/prettyping/
# https://github.com/orf/gping
alias ping='prettyping --nolegend'

# fzf > ctrl+r
# https://github.com/junegunn/fzf
alias preview="fzf --preview 'bat --color \"always\" {}'"

# diff-so-fancy > diff
# https://github.com/so-fancy/diff-so-fancy
# ~/.gitconfig
[pager]
    diff = diff-so-fancy | less --tabs=1,5 -RFX
    show = diff-so-fancy | less --tabs=1,5 -RFX

# ranger
# https://github.com/ranger/ranger



# jq > grep
# https://stedolan.github.io/jq/
# https://stedolan.github.io/jq/tutorial/

# ponysay > cowsay
# https://github.com/erkin/ponysay

# noti > display notification
# https://github.com/variadico/noti

# entr > watch
# http://www.entrproject.org/

# fpp(PathPicker)
# https://github.com/facebook/PathPicker

# pgcli > psql
# https://www.pgcli.com/

# HTTPie > curl
# https://httpie.org/

# mycli
# https://www.mycli.net/

# Go Bullet Train (GBT)
# https://github.com/jtyr/gbt

# gron
# https://github.com/TomNomNom/gron

# direnv -- Unclutter your .profile
# https://github.com/direnv/direnv

# Tig: text-mode interface for Git
# https://jonas.github.io/tig/

# historian
# https://github.com/jcsalterego/historian

# jp
# https://github.com/jmespath/jp

# SCM Breeze
# https://github.com/scmbreeze/scm_breeze

# SC-IM - Spreadsheet Calculator Improvised -- An ncurses spreadsheet program for terminal
# https://github.com/andmarti1424/sc-improved

exit $?

