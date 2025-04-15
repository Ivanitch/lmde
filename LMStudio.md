## 🔧 Исполняемый файл

➡️ Скачать можно здесь: https://lmstudio.ai/download

- Дать разрешение на исполнение
```bash
chmod +x имя_файла.AppImage
```

- Запустить
```bash
./имя_файла.AppImage
```

## 🧩 Ярлык

- Перенести `.AppImage` в постоянное место (например):
```bash
mkdir -p ~/Applications
mv ~/Загрузки/MyApp.AppImage ~/Applications/
chmod +x ~/Applications/MyApp.AppImage
```

- Создать ярлык (desktop-файл):
```bash
nano ~/.local/share/applications/myapp.desktop
```
Вставить туда:
```ini
[Desktop Entry]
Name=MyApp
Comment=Описание приложения (необязательно)
Exec=/home/имя_пользователя/Applications/MyApp.AppImage
Icon=/home/имя_пользователя/Applications/myapp-icon.png
Type=Application
Categories=Utility;
Terminal=false
```
🔁 Заменить:
`имя_пользователя` на своё имя пользователя
`Icon=` — на путь к иконке, или убери строку, если не нужна
`Categories=` — можно указать Utility;, Development;, Graphics; и т.д.

Обнови кэш меню:
```bash
update-desktop-database ~/.local/share/applications/
```
**UPD:**

📄 Файл: `~/.local/share/applications/lm-studio.desktop`
Создай его вручную или скопируй командой ниже:
```bash
cat <<EOF > ~/.local/share/applications/lm-studio.desktop
[Desktop Entry]
Name=LM-Studio
Comment=LM Studio - запуск LLM локально
Exec=/home/sai/Applications/LM-Studio.AppImage
Icon=lm-studio
Type=Application
Categories=Development;Utility;
Terminal=false
EOF
```
🎨 Иконка:
```bash
wget -O ~/.local/share/icons/lm-studio.png https://ignos.blog/wp-content/uploads/2024/01/lm-studio-logo.png
```
Обнови кэш:
```bash
update-desktop-database ~/.local/share/applications/
```

Теперь `LM-Studio` должен появиться в меню (например, в разделе "Программирование" или "Разное").
Можно закрепить в избранном или вывести ярлык на рабочий стол.

Если не появился — просто перезайти или выполнить:
```bash
gtk-update-icon-cache ~/.local/share/icons/
```

