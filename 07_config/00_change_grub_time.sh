# �޸�grub�����ĵȴ�ʱ��
# grub�������ļ�Ϊ/boot/grub/grub.cfg�������ļ�ʵ�����Ǹ���/etc/default/grub�������Զ����ɵ�

sudo sed -i '/^GRUB_HIDDEN_TIMEOUT=0/ s/^/#/' /etc/default/grub
sudo sed -i '/^GRUB_TIMEOUT=10/ s/10/5/' /etc/default/grub
sudo update-grub
