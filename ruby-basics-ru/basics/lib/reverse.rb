# frozen_string_literal: true

# BEGIN
def reverse(string)
  result = []
  (0...string.size).each do |idx|
    result << string[string.size - 1 - idx]
  end
  result.join
end
# END
