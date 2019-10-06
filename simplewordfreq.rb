# from the caribbean with love!
puts "Enter a phrase you'd like to analyze: "
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each { |w| frequencies[w] += 1 }

frequencies = frequencies.sort_by do |w, count|
  count
end
frequencies.reverse!
frequencies.each do |x, count|
  puts x + " " + count.to_s
end
