class Test
  attr_reader :number_of_questions

  # метод конструктор
  def initialize
    # массив вопросов
    @questions = [
        "1. Переживаете ли вы в ожидании важной деловой встречи?",
        "2. Если вам поручат выступить с докладом на каком либо мероприятии, " +
            "вызовет ли это у вас чувство дискомфорта?",
        "3. Вы откладываете поход к врачу до последнего момента?",
        "4. Если вам предстоит командировка в незнакомый город, постараетесь ли вы " +
            "избежать этой командировки?",
        "5. Вы делитесь своими мыслями и чувствами с кем бы то ни было?",
        "6. Вас раздражает, когда незнакомые люди на улице обращаются к вам с вопросом?",
        "7. Вы думаете, что людям разных поколений действительно трудно понимать " +
            "друг друга?",
        "8. Вам сложно будет сказать человеку, чтобы он вернул вам деньги, " +
            "взятые у вас несколько месяцев назад?",
        "9. Вам подали некачественное блюдо в кафе. Промолчите ли вы?",
        "10. Вы заговорите с незнакомым человеком, оставшись с ним наедине?",
        "11. Обнаружив в кассе, магазине, библиотеке длинную очередь, вы встанете в нее?",
        "12. Вам неприятно быть судьей в чужих конфликтах?",
        "13. Вы всегда оцениваете произведения искусства на свой вкус, не прислушиваясь" +
            " к чужому мнению?",
        "14. Если кто то выскажет ошибочную точку зрения на хорошо известный вам вопрос," +
            " вы предпочтете промолчать и не исправлять его?",
        "15. Просьбы помочь в учебе или работе раздражают вас?",
        "16. Вам проще изложить свое мнение на бумаге, чем рассказать о нем?"
    ]

    @number_of_questions = @questions.size
  end

  # метод спрашивает имя пользователя
  def ask_name(name)
    if name
      return name
    else
      return "Незнакомый гость!"
    end
  end

  # метод приветствия
  def welcome(name)
    puts "Здравствуйте #{name}, ответьте на пару вопросов"\
         " что бы определить ваш уровень общительности.\n\n"\
         "Варианты ответов:\n"\
         "Да, нет, иногда"
  end


  def answer
    user_input = nil

    loop do
      puts "Для ответа введите: да, нет, иногда"
      user_input = STDIN.gets.chomp

      if user_input == "да"
        return 2
      elsif user_input == "иногда"
        return 1
      elsif user_input == "нет"
        return 0
      end
    end
  end

  def ask
    @number_of_questions -= 1
    puts @questions.shift
  end

  # вывод ответа пользователю
  def response_questions(points)
    case points
      when 30..31
        return 0
      when 25..29
        return 1
      when 19..24
        return 2
      when 14..18
        return 3
      when 9..14
        return 4
      when 4..8
        return 5
      else
        return 6
    end
  end
end
