beer_count = 99

def beer_message(n)
  if n == 1
    puts "We\'ve only got one bottle of green beer left!"
  else
    puts "We\'ve got #{n} bottles of green beer available."
  end
end

puts 'Hello \'dar! What a foine, foine day it is! Havin\' a drink are we? What shall I fetch ya?'
beer_message(beer_count)

while beer_count != 0

  request = gets.chomp.downcase

  if request == 'drink green beer'
    puts 'A foine choice. You\'re havin\' a green beer \'den!'
    beer_count = beer_count - 1
    beer_message(beer_count)
      if beer_count == 10
       puts 'Goin\' ta need ta restock soon!'
      end
  elsif request == 'restock green beer'
   beer_count = 99
   puts 'Ah, the wee barback lad put some more green beer in the case.'
   beer_message(beer_count)
  else
    puts 'We\'re only servin\' green beer today!'
  end

end

puts 'Sorry, we\'ve run out of green beer! Toodles!'
