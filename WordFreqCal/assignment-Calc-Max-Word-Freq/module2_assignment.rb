# frozen_string_literal: true

# HELLO WORLD
# From the Caribbean with love!

class LineAnalyzer
  attr_reader :highest_count, :highest_word, :cont, :line

  def initialize(cont, line)
    @cont = cont
    @line = line
    @highest_count = 0
    cal_w_freq
  end

  def cal_w_freq
    word_frequency = Hash.new(0)
    @cont.split.each do |word|
      word_frequency[word.downcase] += 1
    end
    @highest_count = word_frequency.values.max
    @highest_word = word_frequency.select { |_x, x1| x1 == @highest_count }.keys
  end
end
class Solution
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  def initialize
    @analyzers = []
  end

  def analyze
    i = 0
    File.foreach('test.txt') do |cont|
      lineAnalyzer = LineAnalyzer.new(cont, i += 1)
      @analyzers << lineAnalyzer
    end
  end

  def calc_line_hfreq
    @highest_count_words_across_lines = []
    @highest_count_across_lines = 0
    @analyzers.each do |analyzer|
      if analyzer.highest_count > @highest_count_across_lines
        @highest_count_across_lines = analyzer.highest_count
      end
    end
    @analyzers.select do |w|
      if w.highest_count == @highest_count_across_lines
        @highest_count_words_across_lines << w
      end
    end
  end

  def print_frequency
    puts 'The following words have the highest word frequency per line:'
    @highest_count_words_across_lines.each { |x| puts "#{x.highest_word} (appears in line#{x.line})" }
  end
end
