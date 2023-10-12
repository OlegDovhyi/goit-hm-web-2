# Використовуємо офіційний Python образ зі списку доступних образів Docker Hub
FROM python:3.10

# Копіюємо файли проекту в контейнер
COPY . /app

# Переходимо до каталогу з проектом
WORKDIR /app

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Встановлюємо залежності з requirements.txt
RUN pip install -r requirements.txt

# Позначимо порт, де працює застосунок всередині контейнера
EXPOSE 5000

# Команда, яка буде виконуватися при старті контейнера
ENTRYPOINT ["python", "teamwork-Tech_Titans/teamwork-Tech_Titans/Menu_project.py"]
