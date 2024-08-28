# Домашнее задание к занятию 5. «Практическое применение Docker»
## Задача 2

![img](https://github.com/SeNike/shvirtd-example-python/blob/main/images/2.png)

## Задача 3
![3.png](https://github.com/SeNike/shvirtd-example-python/blob/main/images/3.png)

## Задача 4

![4.png](https://github.com/SeNike/shvirtd-example-python/blob/main/images/4.png)

[Bash скрипт](https://github.com/SeNike/shvirtd-example-python/blob/main/run.sh)

Ссылка на репозиторий: 
[https://github.com/SeNike/shvirtd-example-python.git](https://github.com/SeNike/shvirtd-example-python.git)

## Задача 5*
bash скрипт для резервного копирования БД mysql в директорию "/opt/backup": 

[https://github.com/SeNike/shvirtd-example-python/blob/main/task5/backup.sh](https://github.com/SeNike/shvirtd-example-python/blob/main/task5/backup.sh)

Запуск резервного копирования каждую минуту:

Создайте файл таймера [/etc/systemd/system/mysql-backup.timer](https://github.com/SeNike/shvirtd-example-python/blob/main/task5/mysql-backup.timer)

Создайте сервис-файл [/etc/systemd/system/mysql-backup.service](https://github.com/SeNike/shvirtd-example-python/blob/main/task5/mysql-backup.service)

Активируйте таймер и запустите его:

systemctl enable mysql-backup.timer

systemctl start mysql-backup.timer

Результат:

![5.png](https://github.com/SeNike/shvirtd-example-python/blob/main/images/5.png)

## Задача 6

Анализируем содержимое образа с помощью dive: 

![image](https://github.com/SeNike/shvirtd-example-python/blob/main/images/6.0.png)

Найдем нужный слой и распакуем его: 

![image](https://github.com/SeNike/shvirtd-example-python/blob/main/images/6.1.png)

Получили файл terraform на докальной машине.

## Задача 6.1
Копируем terraform используя docker cp
![image](https://github.com/SeNike/shvirtd-example-python/blob/main/images/7.png)

## Задача 6.2

Создаем Docerfile:

FROM hashicorp/terraform:latest as builder

FROM scratch

COPY --from=builder /bin/terraform /terraform

![image](https://github.com/SeNike/shvirtd-example-python/blob/main/images/6.2.png)



_________________________________________________________________________________________________________________

