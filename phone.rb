if phone_number.match?(/^\+\d{2}\s\d{2}\s\d{4}\s\d{4}$/)
  puts "This is a valid UK international phone number"
else
  puts "It's not valid!"
end