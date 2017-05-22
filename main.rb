require_relative "lib/test"
require_relative "lib/result"

test = Test.new
result = Result.new

name = test.ask_name(ARGV[0])
test.welcome(name)

until test.number_of_questions < 1
  # ask questions
  test.ask
  result.add_point(test.answer)
end

result.result(name, result.points, test.response_questions(result.points))