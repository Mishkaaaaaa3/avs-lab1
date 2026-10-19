#!/bin/bash
cd "$HOME/lab0"
mkdir -p claude_monet/kitchen/hot_station
mkdir -p claude_monet/kitchen/cold_station
mkdir -p claude_monet/freezer
mkdir -p claude_monet/pantry
mkdir -p claude_monet/chef_office
mkdir -p claude_monet/staff_room

echo 'Говядина для фирменного блюда получена
Сеня проверил мясо перед сменой
Одна упаковка колбасок оставлена на завтра' > claude_monet/kitchen/hot_station/senya_inventory

echo 'Телятина для шефа
Фарш для котлет
Курица для банкета
Заказ должен принять Сеня' > claude_monet/kitchen/hot_station/meat_order

echo 'Сибас доставлен утром
Федя проверил рыбный холодильник
Дорадо осталось четыре штуки' > claude_monet/kitchen/cold_station/fedya_inventory

echo 'Лосось для холодной закуски
Тунец для специального заказа
Рыбные продукты передать Феде' > claude_monet/kitchen/cold_station/fish_order

echo 'Две утки для блюда Баринова
Коробка замороженных овощей
Запас мяса для большой компании' > claude_monet/freezer/reserve_list

echo 'Пропала упаковка дорогих колбасок
Не найден сыр из новой поставки
Сеня и Федя обещали всё объяснить
Баринов требует отчёт до открытия' > claude_monet/pantry/missing_products

echo 'Сеня снова устроил розыгрыш на кухне
Федя помог спрятать продукты
Лёва должен проверить оба цеха
Шеф ждёт объяснительные после смены' > claude_monet/chef_office/barinov_report

echo 'Переставить коробки в кладовой
Сказать Лёве что поставку отменили
Успеть всё вернуть до прихода Баринова' > claude_monet/staff_room/prank_plan

echo 'Лёва заметил беспорядок в кладовой
Записи с кухни переданы шефу
Сеня и Федя останутся после смены' > claude_monet/staff_room/leva_warning

echo 'Вечерняя смена началась спокойно
На кухне обнаружилась пропажа продуктов
Баринов вызвал Сеню и Федю в кабинет' > evening_incident

chmod u=rwx,g=rx,o=rx claude_monet
chmod 750 claude_monet/kitchen
chmod u=rwx,g=rwx,o= claude_monet/kitchen/hot_station
chmod 640 claude_monet/kitchen/hot_station/senya_inventory
chmod u=rw,g=r,o=r claude_monet/kitchen/hot_station/meat_order
chmod 750 claude_monet/kitchen/cold_station
chmod u=rw,g=r,o= claude_monet/kitchen/cold_station/fedya_inventory
chmod 644 claude_monet/kitchen/cold_station/fish_order
chmod u=rwx,g=rx,o= claude_monet/freezer
chmod 600 claude_monet/freezer/reserve_list
chmod 750 claude_monet/pantry
chmod u=rw,g=r,o= claude_monet/pantry/missing_products
chmod 710 claude_monet/chef_office
chmod u=r,g=r,o= claude_monet/chef_office/barinov_report
chmod u=rwx,g=rx,o= claude_monet/staff_room
chmod 600 claude_monet/staff_room/prank_plan
chmod u=r,g=r,o= claude_monet/staff_room/leva_warning
chmod 644 evening_incident