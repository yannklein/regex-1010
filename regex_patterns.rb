# Regexp patterns

# ## Basics
# regexp = /a/           # a
# regexp = /ab/          # a directly followed by b

# ## Quantifiers
# regexp = /abc?/        # ab followed by 0..1 c
# regexp = /abc*/        # ab followed by 0..∞ c
# regexp = /abc+/        # ab followed by 1..∞ c
# regexp = /abc{3}/      # ab followed by 3 c

# ## Grouping
# regexp = /(abc)+/      # 1..∞ abc
# regexp = /(a|b)c/      # ac OR bc
# regexp = /./           # any character

# ## Ranges
# regexp = /[aB9]/       # a OR B OR 9
# regexp = /[0-9]/       # any numeric character
# regexp = /[a-zA-Z]/    # any alphabetical character
# regexp = /[^a-c]/      # any char BUT a, b OR c
# regexp = /\d/          # like /[0-9]/
# regexp = /\w/          # like /[a-zA-Z0-9_]/
# regexp = /\W/          # like /[^a-zA-Z0-9_]/
# regexp = /\s/          # whitespace (space, tab, line-break, ...)

# TRY IT HERE 👇
puts "The quick brown fox jumps over the lazy dog!".match?(regexp)

