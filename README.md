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
testapp_IP = 51.250.78.131
testapp_port = 9292
