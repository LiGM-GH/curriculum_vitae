#let textcolor = blue.darken(60%)
#let lightgrey = black.lighten(90%)
#let gridcolor = white.transparentize(100%)
#let textsize = 11pt
#set page(paper: "a4", margin: (top: 1cm, bottom: 1cm))
#set par(first-line-indent: (all: true, amount: 1.5em))
#set text(lang: "ru", font: "Times New Roman", size: textsize, fill: textcolor)

#show strong: set text(fill: black)
#show link: it => underline(text(fill: blue, it))

#show heading.where(level: 1): it => {
  set align(center)
  set text(size: 1.1em)
  it
}

#show heading.where(level: 2): it => {
  grid(
    columns: (1fr, auto, 1fr),
    align: horizon + center,
    fill: none,
    gutter: 0.5em,
    inset: 0em,

    line(length: 100%), box(width: auto, it), line(length: 100%),
  )
}

#set grid(
  fill: gridcolor,
  gutter: 0.5em,
  inset: 0.5em,
  align: left,
)

#show grid: it => {
  set par(first-line-indent: (amount: 1.5em, all: true), justify: true)
  it
}

#set table(inset: 0.3em, stroke: stroke(paint: gridcolor.darken(20%)))

#show table: set align(center)

#align(center, grid(
  columns: 2,
  align(horizon)[
    #set text(fill: black)
    #text(size: 1.3em)[*Григорий Липкин*]
    \
    Email: #link("mailto:lipkin.gregory@ya.ru", "lipkin.gregory@ya.ru") \
    Телефон: `+7 (915) 335 51-55` \
    GitHub: https://github.com/LiGM-GH
  ],
  align(horizon, block(
    image("my-photo.jpg", width: 100%, height: 100%, fit: "cover"),
    height: 8em,
    width: 8em,
    radius: 50%,
    clip: true,
  )),
))

== Образование

#[
  #set par(hanging-indent: 2em, first-line-indent: 0em)
  *Бакалавриат*: Московский Энергетический Институт (#link("https://mpei.ru/")[МЭИ]), *прикладная математика и информатика*. \
  2021 - 2025 \
  Бакалаврская работа -
  разработка мобильного приложения для аутентификации пользователей по статической рукописной подписи на основе нейронной сети.

  *Магистратура*: Московский Политехнический Университет (#link("https://mospolytech.ru")[МПУ]), *прикладная математика и информатика*. \
  2025 - наст. время
]

== Опыт

#[
  #set par(hanging-indent: 2em, first-line-indent: 0em)
  *Май 2024 - сентябрь 2025*: телекоммуникационный проект, 66000 LOC, используется по настоящее время. \
  Разработка *телекоммуникационных* программных *модулей*
  для *аудио-конференций* на базе библиотек *Asterisk DAHDI*
  для *многопортовой платы T1/E1* .
  Разработка библиотек для DACS, конференций, записи и проигрывания аудио. \
  Стек: C/C++, Debian 12

  *Июнь-июль 2024*: банк *Ренессанс Кредит, практикант.* \
  Практика по созданию системы проверки изображений от пользователей
  для печати на карте на соответствие нормам (фильтрация NSFW-контента).
  Разработал backend (сервис, библиотека и демон), Java (Spring), Rust.
  Разработка в составе команды из трёх человек,
  два члена команды занимались разработкой фронтенда. \
  2000 LOC, получена оценка "*отлично*". \
  Стек: Java (Spring), Rust, Ubuntu

  *Май 2023*: *Renton Hackathon* (24 полных часа). \
  Разработка *бэкенд-приложения* электронной коммерции в составе команды из трёх человек для демонстрации банковского приложения. \
  Стек: Rust (Actix-web), PostgreSQL, Ubuntu

  *Август-сентябрь 2023*: Помощник преподавателя на курсе *"Алгоритмы и структуры данных"*
  в #link("https://maths-h.com/")[MathsHub] - онлайн-академии. \
  Стек: Python
]

== Технологии и языки программирования


#let technologies = (
  "Rust",
  "Python",
  "C/C++",
  "Ruby/Rails",
  "Java",
  "Bash",
  "Nushell",
  "Postman",
  "Docker/Podman",
  "PostgreSQL",
)

#for tech in technologies {
  (
    box(fill: lightgrey, stroke: lightgrey, inset: 3pt, radius: 20pt, tech)
      + " "
  )
}

== Языки

#grid(
  columns: (1fr, 1fr),
  [*Русский* - родной], [ *Английский* - upper intermediate (TOEFL 90/120) ],
)
