# frozen_string_literal: true

# BEGIN
def get_same_parity(list)
  list.filter do |elem|
    list.first.even? ? elem.even? : elem.odd?
  end
end
# END
