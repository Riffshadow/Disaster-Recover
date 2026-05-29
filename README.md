# Домашнее задание: Настройка HSRP в Cisco Packet Tracer — Иван

## Инструкция по выполнению домашнего задания

В рамках работы была выполнена настройка отказоустойчивой сети с использованием протокола HSRP в Cisco Packet Tracer.

## Цель работы

Настроить резервирование шлюза по умолчанию с использованием HSRP между двумя маршрутизаторами.

## Топология сети

Использованы устройства:
- PC-PT (PC0)
- Switch 2960-24TT
- Router R1
- Router R2

Схема:
PC → Switch → R1
PC → Switch → R2

## IP-адресация

R1: 192.168.1.1 /24  
R2: 192.168.1.2 /24  
Virtual Gateway (HSRP): 192.168.1.254

## Настройка HSRP

R1:
- Priority: 110
- Preempt: enabled
- Virtual IP: 192.168.1.254
- State: Active

R2:
- Priority: 100
- Preempt: enabled
- Virtual IP: 192.168.1.254
- State: Standby

## Проверка работы

Команда:
show standby brief

Результат:
R1: Active  
R2: Standby  

Команда:
ping 192.168.1.254

Результат:
0% packet loss, связь успешна

## Скриншоты

- Топология Packet Tracer  
- R1: show standby brief  
- R2: show standby brief  
- Ping с PC на 192.168.1.254  

## Вывод

В ходе работы была настроена отказоустойчивая сеть с использованием HSRP. Виртуальный IP обеспечивает непрерывный доступ к шлюзу при отказе одного из маршрутизаторов.
