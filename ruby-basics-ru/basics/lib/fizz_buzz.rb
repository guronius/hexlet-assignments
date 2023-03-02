# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  return nil if start > stop
  result = []

  (start..stop).each do |number|
    if (number % 3).zero? && (number % 5).zero?
      result << 'FizzBuzz'
    elsif (number % 3).zero?
      result << 'Fizz'
    elsif (number % 5).zero?
      result << 'Buzz'
    else
      result << number
    end
  end

  result.join(' ')
end
# END
