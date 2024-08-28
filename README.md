# Домашнее задание к занятию 5. «Практическое применение Docker»
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
![image](https://github.com/user-attachments/assets/c1ab1568-5b0f-4301-991f-612f919ab761)

_________________________________________________________________________________________________________________

# shvirtd-example-python

Example Flask-application for docker compose training.
## Installation
First, you need to clone this repository:

```bash
git clone https://github.com/netology-code/shvirtd-example-python.git
```

Now, we will need to create a virtual environment and install all the dependencies:

```bash
python3 -m venv venv  # on Windows, use "python -m venv venv" instead
. venv/bin/activate   # on Windows, use "venv\Scripts\activate" instead
pip install -r requirements.txt
python main.py
```
You need to run Mysql database and provide following ENV-variables for connection:  
- DB_HOST (default: '127.0.0.1')
- DB_USER (default: 'app')
- DB_PASSWORD (default: 'very_strong')
- DB_NAME (default: 'example')

The applications will always running on http://localhost:5000.  
To exit venv just type ```deactivate```

## License

This project is licensed under the MIT License (see the `LICENSE` file for details).
