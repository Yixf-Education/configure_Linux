# configure_Linux —— 重装Linux系统后快速配置（软件安装、配置调整……）

## Linux发行版
* Linux Mint, 18.1, Cinnamon

## 配置内容
* 安装软件
* 配置软件
* 微调系统

# 使用步骤
0. 创建目录：`00_mkdir.sh`，创建必需的几个目录。
1. 设置代理：`00_proxy.sh`，安装完成后**必须**手动设置代理，确保正常后设置为开机自启动。
2. 安装必需工具：`./install_scripts_in_folder.sh 01_essential 01.log`
3. 安装常用软件：`./install_scripts_in_folder.sh 02_software 02.log`
4. 在图形界面下安装软件并进行设置。
    1. 02_software下的部分软件可能需要在图形界面下进行登录或者配置：fcitx，filezilla，keepassx，mendeley，sogoupinyin，teamviewer，calibre，cmd-markdown，tmux，terminal，……
    2. 02_software_gui
5. 安装生物信息学软件：`./install_scripts_in_folder.sh 03_bio 03.log`；此处进行的只是基础配置，具体软件还需后续安装。
6. 配置dotfiles：`./install_scripts_in_folder.sh 04_dotfile 04.log`
7. 安装其他非必需软件：`./install_scripts_in_folder.sh 05_opt 05.log`
8. 对系统进行更多配置：`./install_scripts_in_folder.sh 06_config 06.log`；仅需进行部分配置即可，部分配置需要在图形界面下继续操作。
9. 继续配置系统：此处的配置大部分都需要在图形界面下进行操作。
10. 安装模块或者包：Perl，R，Python（随用随装吧）。

