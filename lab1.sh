#!/bin/bash
# - shebang, указывает, что shell-скрипт нужно выполнять с помощью Bash

# Лабораторная работа №1. Вариант 9. (ИСУ 562073)


### ЧАСТЬ 1

# подготовка рабочего пространства:
mkdir ~/lab0
cd ~/lab0
git init

# touch ~/lab1.sh


## 1. Создание дерева каталогов и файлов

# верхний уровнь
mkdir claude_monet kostya_room empty_crates
# проверка
ls

# создание вложенных каталогов внутри claude_monet
mkdir claude_monet/bar claude_monet/wine_cellar claude_monet/storage claude_monet/hall claude_monet/office
# проверка
ls claude_monet

# создание файла cocktail_menu
echo "Фирменный коктейль от Кости" > claude_monet/bar/cocktail_menu
echo "Лимонад для Насти без сахара" >> claude_monet/bar/cocktail_menu
echo "Классический напиток для постоянных гостей" >> claude_monet/bar/cocktail_menu
echo "Новый коктейль показать Вике вечером" >> claude_monet/bar/cocktail_menu
# проверка
cat claude_monet/bar/cocktail_menu

# создание файла evening_orders
echo "Столик два заказал три коктейля" > claude_monet/bar/evening_orders
echo "Для банкета подготовить холодные напитки" >> claude_monet/bar/evening_orders
echo "Нагиев ждёт свой заказ у барной стойки" >> claude_monet/bar/evening_orders
echo "Последний заказ принимает Костя" >> claude_monet/bar/evening_orders
# проверка
cat claude_monet/bar/evening_orders

# проверка
ls claude_monet/bar

# создание файла inventory
echo "В погребе осталось двенадцать бутылок вина" > claude_monet/wine_cellar/inventory
echo "Красное вино заказано для банкета" >> claude_monet/wine_cellar/inventory
echo "Белое вино подадут к рыбе Феди" >> claude_monet/wine_cellar/inventory
echo "Костя проверит остатки после закрытия" >> claude_monet/wine_cellar/inventory
# проверка
cat claude_monet/wine_cellar/inventory

# создание файла nagiev_wine
echo "Нагиев попросил оставить любимое вино" > claude_monet/wine_cellar/nagiev_wine
echo "Бутылку перенесли на отдельную полку" >> claude_monet/wine_cellar/nagiev_wine
echo "Костя отвечает за специальный заказ" >> claude_monet/wine_cellar/nagiev_wine
echo "Подать вино после приезда владельца" >> claude_monet/wine_cellar/nagiev_wine
# проверка
cat claude_monet/wine_cellar/nagiev_wine

#проверка
ls claude_monet/wine_cellar

# создание файла supplier_note
echo "Поставщик привезёт напитки утром" > claude_monet/storage/supplier_note
echo "Новая партия вина отмечена в накладной" >> claude_monet/storage/supplier_note
echo "Костя должен проверить количество коробок" >> claude_monet/storage/supplier_note
echo "О повреждениях сразу сообщить Вике" >> claude_monet/storage/supplier_note
# проверка
cat claude_monet/storage/supplier_note

# проверка
ls claude_monet/storage

# создание файла reservations
echo "Столик четыре забронирован на вечер" > claude_monet/hall/reservations
echo "У окна ждут постоянных гостей" >> claude_monet/hall/reservations
echo "Большой стол подготовить для банкета" >> claude_monet/hall/reservations
echo "Вика утвердит план рассадки" >> claude_monet/hall/reservations
# проверка
cat claude_monet/hall/reservations

# создание файла nastya_note
echo "Настя передаёт заказы Косте лично" > claude_monet/hall/nastya_note
echo "Гостям за пятым столиком нужна вода" >> claude_monet/hall/nastya_note
echo "На банкете напитки подают после закусок" >> claude_monet/hall/nastya_note
echo "Последний заказ проверить перед закрытием" >> claude_monet/hall/nastya_note
# проверка
cat claude_monet/hall/nastya_note

# проверка
ls claude_monet/hall

# создание файла vika_schedule
echo "Вика проверяет бар до открытия" > claude_monet/office/vika_schedule
echo "Днём проходит встреча с поставщиком" >> claude_monet/office/vika_schedule
echo "Перед банкетом нужно сверить заказы" >> claude_monet/office/vika_schedule
echo "После смены Костя сдаёт отчёт" >> claude_monet/office/vika_schedule
# проверка
cat claude_monet/office/vika_schedule

# проверка 
ls claude_monet/office

# создание файла kostya_diary
echo "Костя открыл бар раньше обычного" > kostya_room/kostya_diary
echo "Настя помогла расставить бокалы" >> kostya_room/kostya_diary
echo "Нагиев похвалил новый коктейль" >> kostya_room/kostya_diary
echo "Вечером друзья встретились после смены" >> kostya_room/kostya_diary
# проверка
cat kostya_room/kostya_diary

# проверка 
ls kostya_room

# создание файла bar_message
echo "Бар открывается вместе с рестораном" > bar_message
echo "Костя назначен ответственным за напитки" >> bar_message
echo "Вика ждёт отчёт об остатках" >> bar_message
echo "Нагиев приедет после восьми часов" >> bar_message
# проверка
cat bar_message

# финальная проверка 
ls
ls claude_monet
ls claude_monet/bar
ls claude_monet/wine_cellar
ls claude_monet/storage
ls claude_monet/hall
ls claude_monet/office
ls kostya_room


## 2. Установка прав доступа

# права для claude_monet
chmod 755 claude_monet
# проверка
ls -ld claude_monet

# права для bar
chmod u=rwx,g=rx,o= claude_monet/bar
chmod 644 claude_monet/bar/cocktail_menu
chmod u=rw,g=r,o= claude_monet/bar/evening_orders
# проверка
ls -ld claude_monet/bar
ls -l claude_monet/bar

# права для wine_cellar
chmod 750 claude_monet/wine_cellar
chmod u=rw,g=rw,o= claude_monet/wine_cellar/inventory
chmod 640 claude_monet/wine_cellar/nagiev_wine
# проверка
ls -ld claude_monet/wine_cellar
ls -l claude_monet/wine_cellar

# права для storage
chmod u=rwx,g=rx,o= claude_monet/storage
chmod u=rw,g=r,o=r claude_monet/storage/supplier_note
# проверка
ls -ld claude_monet/storage
ls -l claude_monet/storage

# права для hall 
chmod 755 claude_monet/hall
chmod 664 claude_monet/hall/reservations
chmod u=r,g=r,o=r claude_monet/hall/nastya_note
# проверка
ls -ld claude_monet/hall
ls -l claude_monet/hall

# права для office 
chmod u=rwx,g=rx,o= claude_monet/office
chmod 640 claude_monet/office/vika_schedule
# проверка 
ls -ld claude_monet/office
ls -l claude_monet/office

# права для kostya_room
chmod 750 kostya_room 
chmod u=r,g=r,o= kostya_room/kostya_diary
# проверка
ls -ld kostya_room
ls -l kostya_room

# права для empty_crates
chmod 700 empty_crates
# проверка 
ls -ld empty_crates

# права для bar_message
chmod u=rw,g=r,o=r bar_message
# проверка 
ls -l bar_message

# финальная проверка
ls -ld claude_monet
ls -ld claude_monet/bar
ls -l claude_monet/bar
ls -ld claude_monet/wine_cellar
ls -l claude_monet/wine_cellar
ls -ld claude_monet/storage
ls -l claude_monet/storage
ls -ld claude_monet/hall
ls -l claude_monet/hall
ls -ld claude_monet/office
ls -l claude_monet/office
ls -ld kostya_room
ls -l kostya_room
ls -ld empty_crates
ls -l bar_message

# делаю git status, add, commit
git status
git add .
git status
git commit -m "создано дерево файлов и установлены права доступа"
git status

# Публикация репозитория на GitHub

# в описании лабы в части 1 п. 5 указано выполнить git push,
# но не описано, как первоначально связать локальный репозиторий с GitHub.
# поэтому для первой публикации использую интерфейс VS Code:
# Source Control → Publish Branch / Publish to GitHub → создание репозитория avs_lab1.
git push


### ЧАСТЬ 2

## 3. Копирование, перемещение и создание ссылок

# 1. копирование kostya_diary в office под именем bartender_report
cp kostya_room/kostya_diary claude_monet/office/bartender_report
# проверка
ls -l claude_monet/office
cat claude_monet/office/bartender_report

# 2. рекурсивное копирование wine_cellar в storage под именем cellar_backup
cp -r claude_monet/wine_cellar claude_monet/storage/cellar_backup
# проверка 
ls -l claude_monet/storage
ls -l claude_monet/storage/cellar_backup

# 3. создание относительной символичесой ссылки today_orders
ln -s ../claude_monet/bar/evening_orders kostya_room/today_orders
# проверка
ls -l kostya_room
cat kostya_room/today_orders 

# 4. создание символической ссылки bar_entrance на каталог bar
ln -s claude_monet/bar bar_entrance
# проверка 
ls -l

# 5. создание жесткой ссылки owner_message на bar_message
ln bar_message claude_monet/bar/owner_message
# проверка 
ls -l bar_message claude_monet/bar/owner_message
cat  bar_message claude_monet/bar/owner_message

# 6. объединение reservations и nastya_note в service_plan
cat claude_monet/hall/reservations claude_monet/hall/nastya_note > claude_monet/hall/service_plan
# проверка 
cat claude_monet/hall/service_plan
wc -l claude_monet/hall/service_plan

# 7. добавление supplier_note в конец inventory
cat claude_monet/storage/supplier_note >> claude_monet/wine_cellar/inventory
# проверка 
cat claude_monet/wine_cellar/inventory
wc -l claude_monet/wine_cellar/inventory

# 8. перемещение nagiev_wine в office под именем special_wine
mv claude_monet/wine_cellar/nagiev_wine claude_monet/office/special_wine
# проверка 
ls -l claude_monet/wine_cellar
ls -l claude_monet/office

# делаю git status, add, commit, push 
git status
git add .
git status
git commit -m "добавлены копии, перемещения и ссылки"
git push
git status


### ЧАСТЬ 3

## 4. Поиск, фильтрация и обработка данных

# 1. пять самых крупных обычных файлов, исключая имена с report
ls -lR | grep "^-" | grep -v "report" | sort -k5,5nr | head -n 5
# вывод: 
# -rw-rw---- 1 vscode vscode 548 Sep 19 17:13 inventory
# -rw-r--r-- 1 vscode vscode 525 Sep 19 17:10 service_plan
# -r--r--r-- 1 vscode vscode 282 Sep 18 19:14 nastya_note
# -rw-r--r-- 1 vscode vscode  278 Sep 18 19:09 supplier_note
# -rw-r----- 1 vscode vscode 274 Sep 18 19:00 special_wine

# 2. 6 первых строк без имен файлов, с Костей или Настей в любом регистре, 
# без сочетания "отчёт", отсортированные в обратном алфавитном порядке
# (на всякий случай -i сделала еще и к "отчёт")
grep -RihE "костя|настя" . | grep -vi "отчёт" | sort -r | head -n 6
# вывод:
# Последний заказ принимает Костя
# Последний заказ принимает Костя
# Последний заказ принимает Костя
# Настя помогла расставить бокалы
# Настя помогла расставить бокалы
# Настя передаёт заказы Косте лично 

# 3. кол-во файлов в wine_cellar и cellar_backup,
# содержащих сочетание "вино" хотя бы один раз
grep -rl "вино" claude_monet/wine_cellar claude_monet/storage/cellar_backup | wc -l
# вывод:
# 3

# 4. первая и последняя строки из cocktail_menu и evening_orders без служебных 
# заголовков, содержащие "коктейл" или "заказ", отсортированные по алфавиту
(head -q -n 1 claude_monet/bar/cocktail_menu claude_monet/bar/evening_orders; tail -q -n 1 claude_monet/bar/cocktail_menu claude_monet/bar/evening_orders) | grep -Ei "коктейл|заказ" | sort
# вывод: 
# Новый коктейль показать Вике вечером
# Последний заказ принимает Костя
# Столик два заказал три коктейля
# Фирменный коктейль от Кости

# 5. кол-во слов в первых четырёх строках, отсортированных в обратном 
# алфавитном порядке, содержащих "гост" или "заказ", но без "послед"
# (регистр игнорируется с помощью -i)
cat claude_monet/hall/service_plan | grep -vi "послед" | grep -Ei "гост|заказ" | sort -r | head -n 4 | wc -w
# вывод:
# 16

# 6. обычные файлы с количеством жёстких ссылок = 2,
# отсортированные по inode как по числу
# использую два простых grep вместо сложных регулярок:
# " -" — обычный файл, " 2 $USER " — количество ссылок равно 2
ls -liR | grep " -" | grep " 2 $USER " | sort -k1,1n
# вывод:
# 68430 -rw-r--r-- 2 vscode vscode  256 Sep 18 19:39 bar_message
# 68430 -rw-r--r-- 2 vscode vscode 256 Sep 18 19:39 owner_message

# 7. первая строка из символических ссылок, отсортированных по имени
# в обратном алфавитном порядке
ls -lR | grep "^l" | sort -k9,9r | head -n 1
# вывод: 
# lrwxrwxrwx 1 vscode vscode  34 Sep 19 16:25 today_orders -> ../claude_monet/bar/evening_orders


## 5. Удаление файлов, ссылок и каталогов

# 1. удаление исходного файла kostya_room/kostya_diary 
# (-f = без запроса подтверждения)
rm -f kostya_room/kostya_diary

# 2. удаление символической ссылки kostya_room/today_orders
rm kostya_room/today_orders

# 3. удаление символической ссылки bar_entrance
rm bar_entrance

# 4. удаление исходного файла bar_message, не удаляя созданную для него жёсткую ссылку
rm bar_message
# 5. удаление жёсткой ссылки claude_monet/bar/owner_message
rm claude_monet/bar/owner_message
# 6. удаление файла claude_monet/storage/supplier_note
rm claude_monet/storage/supplier_note

# 7. удаление пустого каталога empty_crates при помощи rmdir
rmdir empty_crates

# 8. удаление каталога claude_monet/storage/cellar_backup со всем его содержимым
# (без запроса подтверждения)
rm -rf claude_monet/storage/cellar_backup

# делаю git status, add, commit, push 
git status 
git add .
git commit -m "удалены файлы, ссылки и каталоги по заданию"
git push
git status

# пишу отчет и ВСЕ УРААААА!!!! я устала очень