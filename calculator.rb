def greeting
  puts "Hello!  Please type your name: "
  name = gets
  puts "Nice to meet you #{name}.  Let's start   \n
  I can add, subtract, multiply, divide, square root, base 0 log, and more.\n"
end

# This method ask the user what type of calculation they would like to perform
# It returns the operation or an error for erroneous entry
def request_calculation_type
  puts "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide two numbers, 5 to find the square root of a : "
  operation_selection = gets.to_i

  if operation_selection == 1
    "add"
  elsif operation_selection == 2
    "subtract"
  elsif operation_selection == 3
    "multiply"
  elsif operation_selection == 4
    "divide"
  elsif operation_selection == 5
    "sqr"
  else
    "error"
  end

end

def calculate_answer(operator, a, b)
  if operator == "add"
    a + b
  elsif operator == "subtract"
    a - b
  elsif operator == "multiply"
    a * b
  elsif operator == "divide"
    a / b
  elsif operator == "sqr"
    Math.sqrt(a)
  end
end

name = greeting
run_calculator = 1

while run_calculator == 1

  current_calculation = request_calculation_type()

  if current_calculation == "error"

    puts "I do not understand this type of calculation... Can we try again?"

  else
    puts "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "The answer is #{answer}"
    puts "Type 1 to run another calcution or 2 to end: "
    run_calculator = gets.to_i

  end
end