#gsettings set org.gnome.gedit.preferences.encodings auto-detected "['GB18030', 'GB2312', 'GBK', 'UTF-8', 'BIG5', 'CURRENT', 'ISO-8859-15', 'UTF-16']"
#gsettings set org.gnome.gedit.preferences.encodings shown-in-menu "['GB18030', 'GB2312', 'GBK', 'UTF-8', 'BIG5', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

#gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['GB18030', 'GB2312', 'GBK', 'UTF-8', 'BIG5', 'CURRENT', 'ISO-8859-15', 'UTF-16']"

sudo apt install dconf-editor
#dconf-editor --> org --> x --> editor --> preferences --> encodings --> auto-detected
#un-select "Use default value"
#['UTF-8', 'CURRENT', 'GB18030', 'GB2312', 'GBK', 'BIG5', 'BIG5-HKSCS', 'ISO-8859-15', 'UTF-16']
