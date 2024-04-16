# Создать контейнер с логгированием
sudo lxc-create -n ubuntu_1 -t ubuntu -o ubuntu_1.log -l DEBUG

# Ограничить контейнер 256 Мб ОЗУ 
sudo micro /var/lib/lxc/ubuntu_1/config
sudo cat /var/lib/lxc/ubuntu_1/config | grep memory
lxc.cgroup2.memory.max = 256M
#lxc.cgroup2.memory.max = 256M
sudo cat /var/lib/lxc/ubuntu_1/config | grep start
#lxc.start.auto = 1

# Запустить и проверить
sudo lxc-start -n ubuntu_1
sudo lxc-attach -n ubuntu_1
# Внутри контейнера
free -m
#                total        used        free      shared  buff/cache   available
# Mem:             256          26         225           0           3         229
# Swap:              0           0           0

# Лог после перезагрузки
sudo lxc-ls --running
#ubuntu_1
sudo cat ubuntu_1.log 
#lxc-create ubuntu_1 20240416162249.244 DEBUG    storage - storage/storage.c:get_storage_by_name:209 - Detected rootfs type "dir"
