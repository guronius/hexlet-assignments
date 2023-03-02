# frozen_string_literal: true

# BEGIN
def fibonacci(number)
  return nil if number < 0
  return 0 if number == 0
  return 1 if number == 1
  return 1 if number == 2

  return fibonacci(number - 1) + fibonacci(number - 2)
end
# END