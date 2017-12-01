require 'to_words'

def magic_number

  puts "Input any number:"
  num = gets.strip
  num =~ /\d/ ? check_magic(num) : magic_number

  play_again

end

def check_magic(num)
  if num.to_i >= 0
    puts "#{num} is #{num.to_words.length}"
    output = num.to_words.length
    if output == 4
      puts "4 is the magic number"
    else
      check_magic(output)
    end
  else
    puts "Please input positive number."
    magic_number
  end
end

def play_again
  puts "Would you like see more magic?\n[1] Yes [2] No"
  gets.strip.to_i == 2 ? exit(0) : magic_number
end

magic_number
