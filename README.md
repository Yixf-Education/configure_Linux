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
4. 
5. 
