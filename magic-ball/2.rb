# coding: utf-8

# «Волшебный шар». Он подскажет ответ на любой жизненный вопрос.
# Объявляем переменную и присваиваем ей массив вариантов ответов
answers = %w[
  Бесспорно
  Предрешено
  "Никаких сомнений"
  "Определённо да"
  "Можешь быть уверен в этом"

  "Мне кажется — «да»"
  "Вероятнее всего"
  "Хорошие перспективы"
  "Знаки говорят — «да»"
  Да

  "Пока не ясно, попробуй снова"
  "Спроси позже"
  "Лучше не рассказывать"
  "Сейчас нельзя предсказать"
  "Сконцентрируйся и спроси опять"
  
  "Даже не думай" "Мой ответ — «нет»"
  "По моим данным — «нет»" 
  "Перспективы не очень хорошие"
  "Весьма сомнительно"
]

greetings = [
  "Привет, дорогой друг. Отвечаю на твой вопрос...",
  "Кто вопрошает, тот получит ответ:",
  "Здравствуй, смертный. Сегодня для тебя такой ответ:"
]


puts greetings.sample
puts
# выводим случайный элемент массива
puts answers.sample