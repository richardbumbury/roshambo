# roshambo.rb

puts 'Play Rock-Paper-Scissors!'
puts ''
puts 'Rock breaks scissors, paper covers rock, and scissors cuts paper.'

OPTIONS = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors' }
def message(winning_hand)
  case winning_hand
  when 'r'
    puts 'Rock broke scissors!'
  when 'p'
    puts 'Paper wrapped rock!'
  when 's'
    puts 'Scissors cut paper!'
  end
end

loop do
  begin
    puts 'Enter \'r\' for rock, \'p\' for paper, or \'s\' for scissors.'
    hand_1 = gets.chomp.downcase
    puts 'Please choose \'r,\' \'p,\' or \'s,\'' if hand_1 != OPTIONS.keys
  end until OPTIONS.keys.include?(hand_1)

  hand_2 = OPTIONS.keys.sample

  if hand_1 == 'r' && hand_2 == 's' || hand_1 == 'p' && hand_2 == 'r' || hand_1 == 's' && hand_2 == 'p'
    message(hand_1)
    puts 'You win!'
  elsif hand_1 == hand_2
    puts 'You tied!'
  else
    message(hand_2)
    puts 'You lost!'
  end
  puts 'Play again? (Y/N)'
  break if gets.chomp.downcase != 'y'
  puts ''
end

puts 'Thanks for playing!'