#!/bin/bash
echo 'Задание 1'
ls -lR claude_monet evening_incident kitchen_work | grep '^-' | grep -v '_copy$' | sort -k5,5n | tail -n 4

echo 'Задание 2'
grep -rhiE 'сеня|федя' claude_monet evening_incident | grep -v 'Баринов' | sort | head -n 6

echo 'Задание 3'
grep -li 'рыб' claude_monet/kitchen/cold_station/* claude_monet/staff_room/cold_backup/* | wc -l