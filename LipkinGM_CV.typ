#let textcolor = blue.darken(60%)
#let textsize = 9pt
#set page(paper: "a4", margin: (x: 17mm, y: 17mm))
#set par(first-line-indent: (all: true, amount: 1.5em))
#set text(lang: "ru", font: "Times New Roman", size: textsize, fill: textcolor)
#let lightgray = black.lighten(90%)

#show strong: set text(fill: black)
#show link: it => underline(text(fill: blue, it))

#show heading.where(level: 1): it => {
  set align(center)
  set text(size: 1.1em)
  it
}

#show heading.where(level: 2): it => {
  [
    #grid(
      columns: (1fr, auto, 1fr),
      align: horizon + center,
      fill: none,
      gutter: 0.5em,
      inset: 0em,

      line(length: 100%), box(width: auto, it), line(length: 100%),
    )
  ]
}

#set grid(
  fill: lightgray,
  gutter: 0.5em,
  inset: 0.5em,
  align: left,
)

#show grid: it => {
  set par(first-line-indent: (amount: 1.5em, all: true), justify: true)
  it
}

#set table(inset: 0.3em, stroke: stroke(paint: lightgray.darken(20%)))

#show table: set align(center)

= Григорий Липкин

== Контактные данные

#align(center, grid[
  Email: #link("mailto:lipkin.gregory@ya.ru", "lipkin.gregory@ya.ru") \
  Телефон: `+7 (915) 335 51-55` \
  GitHub: https://github.com/LiGM-GH
])

== Образование

#table(
  columns: (auto, auto, 1fr, auto),
  [Время], [Ступень], [Институт], [Специальность],
  [2021 - 2025],
  [Бакалавриат],
  [Московский Энергетический Институт (#link("https://mpei.ru/")[МЭИ]) ],
  [Прикладная математика и информатика],

  [2025 - наст. время],
  [Магистратура],
  [Московский Политехнический Университет (#link("https://mospolytech.ru")[МПУ])],
  [Прикладная математика и информатика],
)

== Бакалаврская работа

Разработка мобильного приложения для аутентификации пользователей по статической рукописной подписи на основе нейронной сети.

== Языки

#grid(
  columns: (1fr, 1fr),
  [*Русский* - родной], [ *Английский* - upper intermediate (TOEFL 90/120) ],
)

== Опыт

#grid(
  columns: (1fr, 1fr),
  rows: auto,

  grid.cell(colspan: 2)[
    *Декабрь 2025 - настоящее время*: разработка приложения для IP-телефонии на основе стека PJSIP.
  ],

  grid.cell(colspan: 2)[
    *Май 2024 - сентябрь 2025*: телекоммуникационный проект, 66000 LOC, используется по настоящее время. \
    *Разработка *телекоммуникационных* программных модулей* для
    *аудио-конференций* на базе библиотек *Asterisk DAHDI* для
    *многопортовой платы T1/E1* . Разработка библиотек для DACS,
    конференций, записи и проигрывания аудио. \
    Стек: C/C++, Debian 12
  ],

  grid.cell(colspan: 2)[
    *Июнь-июль 2024*: банк *Ренессанс Кредит, практикант.* \
    Практика по созданию системы проверки изображений от пользователей
    для печати на карте на соответствие нормам (фильтрация NSFW-контента).
    Разработал backend (сервис, библиотека и демон), Java (Spring), Rust.
    Разработка в составе команды из трёх человек,
    два члена команды занимались разработкой фронтенда. \
    2000 LOC, получена оценка "*отлично*". \
    Стек: Java (Spring), Rust, Ubuntu
  ],

  [
    *Май 2023*: *Renton Hackathon* (24 полных часа). \
    Разработка *бэкенд-приложения* электронной коммерции в составе команды из трёх человек для демонстрации банковского приложения. \
    Стек: Rust (Actix-web), PostgreSQL, Ubuntu
  ],

  [
    *Август-сентябрь 2023*: Помощник преподавателя на курсе *"Алгоритмы и структуры данных"*
    в #link("https://maths-h.com/")[MathsHub] - онлайн-академии. \
    Стек: Python
  ],
)

== Технологии и языки программирования

#table(
  columns: 2,
  [ Технология ], [ Описание ],
  [ PJSIP ], [ Создание IP-телефона (приложения для Linux) ],
  [ Debian 12 ],
  [ Установка, настройка, установка модулей ядра для работы с телекоммуникационной платой ],

  [ WinAPI ],
  [ Использование на C++: создание окон, сообщения, определение свойств системы ],

  [ PostgreSQL ],
  [ Создание структуры базы данных, запросы средней сложности, хранимые процедуры, репликация. ],
)

#table(
  columns: 3,
  [ Язык ], [ Описание ], [ LoC (approx) ],
  [ Rust ], [ Основное средство последние 2.5 года ], [ 20000 ],
  [ Python ],
  [ Использовался в качестве второго основного последние 4 года ],
  [ 17000 ],

  [ C/C++ ],
  [ Использовался в течение разработки библиотек для DAHDI ],
  [ 4000 ],

  [ Ruby ], [ Использовался первые 1.5 курса в качестве основного ], [ 3000 ],
  [ Java ], [ Использовалась в нескольких проектах ], [ 1300 ],
  [ BASH ], [ Конфигурация Debian, простые скрипты ], [ 700 ],
)
