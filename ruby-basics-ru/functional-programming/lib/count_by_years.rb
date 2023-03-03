# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  users.each_with_object({}) do |user, result|
    next unless user[:gender] == 'male'

    year, = user[:birthday].split('-')
    result[year] ||= 0
    result[year] += 1
  end
end
# END
