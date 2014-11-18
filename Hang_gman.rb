#necessary
require "./hangman_methods.rb"
#start
system("clear")
guessed_letters = []
available_letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
f = File.new("EnglishDictionary.txt", "r")
word_array = []
word_array = f.readlines
word = word_array.sample.chomp
f.close
n = 0
draw_man(0)
puts "Hangman!"
#game
while true
  #method processes
  puts "Guess a letter in lowercase"
  guess = gets.chomp
  guessed_letters.push(guess)
  if check_letter(word,guess).empty?
    n = n + 1
  end
  if display_result(word,guessed_letters) == word.split('').join(' ')
    available_letters.delete(guess)
    system("clear")
    draw_man(n)
    puts "Guessed #{guessed_letters.join(' ')}"
    puts "Letters to guess: #{available_letters.join(' ')}"
    puts display_result(word, guessed_letters)
    puts 'You Win!'
    exit
  end
  if n == 7
    available_letters.delete(guess)
    system("clear")
    draw_man(n)
    puts "Guessed #{guessed_letters.join(' ')}"
    puts "Letters to guess: #{available_letters.join(' ')}"
    puts display_result(word, guessed_letters)
    puts "You Lose"
    exit
  end
  #output
  available_letters.delete(guess)
  system("clear")
  draw_man(n)
  puts "Guessed #{guessed_letters.join(' ')}"
  puts "Letters to guess: #{available_letters.join(' ')}"
  puts display_result(word, guessed_letters)
end
