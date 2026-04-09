<h1 align="center">🌐 Симулятор сетевого инжиниринга NetMaster</h1>

<br />

<p align="center">
  <img width="1920" height="952" alt="image" src="https://github.com/user-attachments/assets/02447364-5bf7-41da-8e9d-53603be9f644" />
</p>

<br />

---

<h3>🧐 Что это такое?</h3>

**Network Master** — это симулятор сетевого инжиниринга для обучения и проектирования компьютерных сетей.  
Проект позволяет визуализировать топологии, создавать сетевое оборудование и отслеживать маршруты передачи данных.

Здесь можно:
- 🖧 Создавать сетевые топологии (коммутаторы, роутеры, ПК)
- 🎨 Визуализировать связи между устройствами с помощью leader-line
- ⚙️ Настраивать IP-адреса, VLAN и другие параметры
- 📡 Симулировать передачу пакетов по сети

<br />

---

<h3>👨‍💻 Технологии</h3>

<ul>
  <li>📄 <strong>HTML5/CSS3</strong> — структура и стилизация</li>
  <li>🎨 <strong>JavaScript (ES6+)</strong> — логика и интерактивность</li>
  <li>🔗 <strong>leader-line</strong> — визуализация связей между устройствами</li>
  <li>🐘 <strong>PHP</strong> — бэкенд-логика и работа с БД</li>
  <li>🗄️ <strong>MySQL</strong> — хранение конфигураций и пользовательских данных</li>
</ul>

<br />

---

### ⚙️ Установка (локальный сервер)

> Перед установкой убедитесь, что у вас есть локальный сервер с поддержкой **PHP 8+** и **MySQL**.

<br />

<b>Шаг 1: Клонирование репозитория</b><br />
Скачайте архив или выполните в терминале:

```bash
git clone https://github.com/gaspacho2103/NetworkMaster.git
cd NetworkMaster
```
<p align="center"> <img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/8694bc34-1ef5-4711-b1b2-27de17f319df" />
<br /><br /><img width="580" height="367" alt="image" src="https://github.com/user-attachments/assets/e0fab4f0-6520-4361-86f2-62db0a3d02c6" />
</p><br />
<b>Шаг 2: Настройка базы данных</b><br />
Откройте MySQL WorkBench (или другую СУБД), создайте подключение. <br /><br />

<p align="center"><img width="1920" height="1040" alt="image" src="https://github.com/user-attachments/assets/be3077c9-9ce9-443f-8e43-438acbb4958b" />
</p><br />
Выполните скрипт netmaster.sql — выполните все незакомментированные запросы. <br /><br />

<p align="center"><img width="782" height="416" alt="image" src="https://github.com/user-attachments/assets/1f764cbc-2176-41b7-bdd9-3faa4ea6762d" />
</p><br />
<b>Шаг 3: Connection (PHP)</b><br />
Откройте NetworkMaster/server/config.php и укажите в host IP‑адрес вашего сервера с базой данных и название самой БД. <br /><br />

<p align="center"> <img width="1920" height="953" alt="image" src="https://github.com/user-attachments/assets/63210da3-31d2-4ccc-b667-732d38d434d3" />
 </p><br /><br />
✅ Готово! Проект успешно запущен.<br /><br />

<p align="center"> <img width="1920" height="1080" alt="final" src="" /> </p><br /><br />
<hr>
<h3>🧭 Руководство пользователя</h3><br />
<h5>🔐 В данном видеоролике продемонстрированы основные возможности приложения</h5><br />
<video src="https://drive.google.com/file/d/1Ndnnwi1WIFEaN95wz_JHwDAftPQ0as1r/view?usp=drive_link"></video>
<hr>
<h3>🎯 Для чего этот проект?</h3><br />
Данный проект является моей курсовой работой, вдохновленной такими продуктами как Cisco Packet Tracer и Boson NetSim<br />
<ul>
<li>🐘 тренировал бэкенд на PHP, ООП и работу с MySQL</li>

<li>🎨 создавал интерактивный интерфейс на чистом JavaScript</li>

<li>🖧 моделировал логику сетевых взаимодействий</li>

</ul>
