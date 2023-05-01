# ByteBattler_infra
ByteBattler Infra repository
Подключение по ssh в одну строку: ssh -i ~/.ssh/appuser -A -J appuser@158.160.101.170

Чтобы работало подключение с помощью алиаса, необходимо создать файл config в директории ~/.ssh/config со следующим содержимым:
Host someinternalhost
  HostName 10.128.0.17
  User appuser
  IdentityFile ~/.ssh/appuser

  ## ProxyJump host
  ProxyJump appuser@158.160.101.170

  ## ProxyCommand
  ProxyCommand ssh -W %h:%p 158.160.101.170

После чего можно сразу пробовать подключаться командой ssh someinternalhost

bastion_IP = 51.250.90.118
someinternalhost_IP = 10.128.0.17

#Занятие 6
testapp_IP = 51.250.92.224
testapp_port = 9292

##  Облачное тестовое приложение:

Создание инстанса через CLI:
yc compute instance create \
--name reddit-app \
--hostname reddit-app \
--core-fraction=5 --memory=4 \
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
--network-interface subnet-name=infra,nat-ip-version=ipv4 \
--metadata serial-port-enable=1 \
--ssh-key ~/.ssh/appuser.pub

Чтобы скопировать файлы скриптов на сервер, выполните следующие команды:
bash install_ruby.sh
bash install_mongodb.sh
bash deploy.sh
