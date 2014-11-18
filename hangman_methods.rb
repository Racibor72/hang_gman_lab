#check_letter
def check_letter(word, letter)
  letters = word.split('')
  locs = []
  letters.each_with_index do |test_letter, i|
    if letter == test_letter
      locs.push(i)
    end
  end
  locs
end

#display_result use include
def display_result(word,guesses)
  letters = word.split('')
  result = []
  letters.each do |let|
    if guesses.include?(let)
      result.push(let)
    else
      result.push('_')
    end
  end
  result.join(' ')
end

#draw_man
def draw_man(n)
  if n == 0
    puts "
    ___________
    |         |
    |
    |
    |
    |
"
  elsif n == 1
    puts "
    ___________
    |         |
    |         @
    |
    |
    |
"
  elsif n == 2
    puts "
    ___________
    |         |
    |         @
    |         |
    |
    |
"
  elsif n == 3
    puts "
    ___________
    |         |
    |         @
    |         |
    |         |
    |
"
  elsif n == 4
    puts "
    ___________
    |         |
    |         @
    |        /|
    |         |
    |
"
  elsif n == 5
    puts "
    ___________
    |         |
    |         @
    |        /|\\
    |         |
    |
"
  elsif n == 6
    puts "
    ___________
    |         |
    |         @
    |        /|\\
    |         |
    |        /
"
   elsif n == 7
    puts "
    ___________
    |         |
    |         @
    |        /|\\
    |         |
    |        / \\
"
  end
end



