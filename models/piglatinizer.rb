class PigLatinizer

  attr_accessor :words

  def initialize
  end

  def piglatinize(text)
    output = ""
    piglatinized = []
    words = text.split(" ")
    words.each do |word|
      word = word.to_s
      letters = self.break(word)
        if letters[-1] =~ /[aeiouAEIOU]/
          piglatinizedword = letters.join("") + "way"
        else
          if letters[-1] =~ /[hHsSpPlLtT]/ && letters[-2] !~ /[aeiAEI]/
            piglatinizedword = letters.join("") + "ay"
          else
            if letters[-1] =~ /[rR]/ && letters[-2] =~ /[pP]/
              piglatinizedword = letters.join("") + "ay"
            else
              piglatinizedword = letters.join("") + "way"
            end
          end
        end
        piglatinized << piglatinizedword
      end
      piglatinized.each do |w|
        output += "#{w} "
      end
      output.chomp(" ")
      output
  end

  def break(words)
      count = 0
      start = []
      letters = words.split("")
      letters.each do |letter|
        break if letter =~ /[aeiouAEIOU]/
          count += 1
        end
      start = letters.shift(count)
      letters += start
      letters
    end
end
