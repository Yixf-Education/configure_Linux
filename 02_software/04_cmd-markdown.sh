# Cmd Markdown

DIR_SRC="$HOME/Sources"
DIR_OPT="$HOME/opt"

echo "[Check updates] https://www.zybuluo.com/cmd/"

wget -c -P $DIR_SRC http://static.zybuluo.com/cmd_markdown_linux64.tar.gz

mkdir $DIR_OPT/CmdMarkdown
tar -zxf $DIR_SRC/cmd_markdown_linux64.tar.gz -C $DIR_OPT/
exit $?
