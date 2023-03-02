# frozen_string_literal: true

# BEGIN
def compare_versions(first_version, second_version)
  first_major, first_minor = first_version.split('.').map(&:to_i)
  second_major, second_minor = second_version.split('.').map(&:to_i)

  return 0 if first_major == second_major && first_minor == second_minor
  return 1 if first_major > second_major
  return -1 if first_major < second_major
  return 1 if first_minor > second_minor
  return -1 if first_minor < second_minor
end
# END
