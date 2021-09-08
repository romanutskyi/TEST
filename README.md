# TEST

Task 1

Implement following on Virtual Box environment:

1.1. Install PHP application Docuwiki
Installation manual: https://www.dokuwiki.org/install

1.2. Install Content Management System (CMS). Choose any from: Drupal, Wordpress, modx, Joomla, or from this list https://en.wikipedia.org/wiki/List_of_content_management_systems#PHP

Installation requirements:
-  Provide access to applications as virtual hosts:
http://address/cms
http://address/wiki
         address – can be IP address or domain name configured at /etc/hosts. 

- DB should runs at separate virtual host.
1.3. Attach virtual hosts to Zabbix monitoring system using agent. 
Adjust web monitoring sites:
  - availability 
  - download speed 
  - ping time

For each host configure monitoring of resources usage: 
  - CPU 
  - Memory 
  - Disk

Write a report about your work in “how to do” format and place it at your Git repository (GitHub, GitLab, BitBucket, etc.). Share repository link.





Task 2

2.1. Создать скрипт script.sh с помощью Bash, которые будет на основе ниже приведенного input.yml файла создавать output.yml с заполненными значениями:

host:
  hostname: {{hostname}} hostname
  ip: {{ip}} hostname -I
date: {{current_date}} date
user:
  home_folder: {{home_folder}} echo ~
  username: {{username}} whoami
first_name: {{firts_name}}
last_name: {{last_name}}


{{hostname}} - хостнейм текущей системы
{{ip}} - IP адрес текущей системы
{{current_date}} - дата и время запуска скрипта
{{home_folder}} - домашняя папка текущего пользователя
{{username}} - имя текущего пользователя
{{first_name}} - имя (передается через параметр -F, если параметр не указан - значение должно быть John)
{{last_name}} - фамилия (передается через параметр -L, если параметр не указан - значение должно быть Doe)

Запуск скрипта ./script.sh <путь к файлу input.yml> -F Vasya -L Pupkin либо ./script.sh ./input.yml (значения first_name и last_name по умолчанию)
Скрипт должен работать с относительными и абсолютными путями к файлу input.yml

2.2. Запустить базу данных mysql в контейнере docker
Создать скрипт scan.sh на Bash, который извне контейнера будет рекурсивно сканировать указанную папку и сохранять полученные данные в базу данных mysql (в контейнере docker).
Скрипт должен собирать следующую информацию
- имя файла
- полный путь 
- размер
- дата создания файла

Скрипт должен создать таблицу files (если такой нет) в указанной схеме и сохранить полученную информацию
Запуск скрипта: ./scan.sh <путь к сканируемой папке> -H <db_host> -P <db_port> -D <db_schema> -U <db_user> -p <db_password> (должен работать с относительными и абсолютными путями).

Отправьте ссылку на Ваш GitHub репозиторий с результатами проделанной работы (скрипты, результаты их выполнения и т.д.).
