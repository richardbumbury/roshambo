# roshambo.rb

puts 'Play Rock-Paper-Scissors!'
puts "\nRock breaks scissors, paper covers rock, and scissors cuts paper."

OPTIONS = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors' }
def message(winning_hand)
  case winning_hand
  when 'r'
    puts "\nRock breaks scissors!"
  when 'p'
    puts "\nPaper wraps rock!"
  when 's'
    puts "\nScissors cuts paper!"
  end
end

loop do
  begin
    puts "\nEnter \'r\' for rock, \'p\' for paper, or \'s\' for scissors."
    puts
        hand_1 = gets.chomp.downcase
  end until OPTIONS.keys.include?(hand_1)

  hand_2 = OPTIONS.keys.sample

  if hand_1 == 'r' && hand_2 == 's' ||
     hand_1 == 'p' && hand_2 == 'r' ||
     hand_1 == 's' && hand_2 == 'p'
    puts "\nYou chose #{OPTIONS[hand_1]}" \
         " and the computer chose #{OPTIONS[hand_2]}."
    message(hand_1)
    puts "\nYou won!"
  elsif hand_1 == hand_2
    puts "\nYou chose #{OPTIONS[hand_1]}" \
         " and the computer chose #{OPTIONS[hand_2]}."
    puts "\nYou tied!"
  else
    puts "\nYou chose #{OPTIONS[hand_1]}" \
         " and the computer chose #{OPTIONS[hand_2]}."
    message(hand_2)
    puts "\nYou lost!"
  end

  puts "\nPlay again? (Y/N)"
  puts
  
  break if gets.chomp.downcase != 'y'

  system("clear")
end

puts "\nThanks for playing!"
