# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(params)
  params.keys.sort.map { |key| "#{key}=#{params[key]}" }.join('&')
end
# END
# rubocop:enable Style/For
