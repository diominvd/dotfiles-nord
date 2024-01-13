#!/bin/bash

# Запускаем MellowPlayer
MellowPlayer &

# Ожидаем, пока окно программы появится
while ! xdotool search --onlyvisible --class "MellowPlayer" --sync; do
    sleep 0.1
done

# Получаем идентификатор окна программы
window_id=$(xdotool search --onlyvisible --class "MellowPlayer" --sync)

# Ожидаем, пока окно программы не будет закрыто
while xdotool search --onlyvisible --class "MellowPlayer" --sync > /dev/null; do
    sleep 0.1
done

# Закрываем процесс MellowPlayer
killall MellowPlayer
