puts "Please enter a file name to have screened to have screened."
text = gets.chomp
puts "Enter word to censor."
redact = gets.chomp

file = File.open(text) do |f|
  f.each_line do |line|
    words = line.split(" ")
    words.each do |word|
      if word == redact
        print "REDACTED "
      else
        print "#{word} "
      end
    end
  end
end
