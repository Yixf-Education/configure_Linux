dir_dot="./dots"

# zsh
cp $dir_dot/zsh.after/*.zsh $HOME/.zsh.after

# vim
cp $dit_dot/vim_settings/*.vim $HOME/.yadr/vim/settings
cp $dir_dot/UltiSnips $HOME/.yadr/vim/
cp $dir_dot/vim_vundles/*.vundle $HOME/.yadr/vim/vundles
sed -i '/vim-snipmate/ s/^/"/' $HOME/.yadr/vim/vundles/languages.vundle
sed -i '/vim-snippets/ s/^/"/' $HOME/.yadr/vim/vundles/languages.vundle
sed -i '/^runtime ruby.vundle/ s/^/"/' $HOME/.yadr/vim/vundles.vim
sed -i '/runtime vim-improvements.vundle/ a\runtime vim-yixf.vundle' $HOME/.yadr/vim/vundles.vim
cat $dir_dot/vimrc >> $HOME/.yadr/vimrc

# others
cp $dir_dot/gitconfig.user $HOME/.gitconfig.user
cp $dir_dot/latexmkrc $HOME/.latexmkrc
cp $dir_dot/tmux.conf.user $HOME/.tmux.conf.user

