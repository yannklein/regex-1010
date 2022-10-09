/hello/.class  #=> Regexp
# Doc: https://www.ruby-doc.org/core/Regexp.html

# ## match?
puts "hello".match?(/l{2}/)  #=> true
puts "hello".match?(/m{2}/)  #=> false

# ## the =~ method
text = "
this is a multi-line text
try to match only this line
and not the others
"
puts text =~ /^try .* line$/       #=> 27 -> The **position** of the match
puts text =~ /\Atry .* line\z/     #=> nil

# ## match
match_data = "John Doe".match(/^(\w+) (\w+)$/)
puts "Firstname: #{match_data[1]}" #=> Firstname: John
puts "Lastname: #{match_data[2]}"  #=> Lastname: Doe

# ## math with patterns
pattern = /^(?<first_name>\w+) (?<last_name>\w+)$/
match_data = "John Doe".match(pattern)
puts match_data[:first_name]
puts match_data[:last_name]

# ## gsub
"hello guys".gsub(/g.{3}/, 'le wagon')  #=> "hello le wagon"

# scan
"Let's play tic tac toe".scan(/t../)    #=> ["t's", "tic", "tac", "toe"]
"Let's play tic tac toe".scan(/\bt../)  #=> ["tic", "tac", "toe"]