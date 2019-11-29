class PigLatinizer

  attr_accessor :words

  def initialize
  end

  def piglatinize(words)
    letters = self.split(words)
    if letters[-1] =~ /[aeiouAEIOU]/
      piglatinized = letters.join("") + "way"
    else
      if letters[-1] =~ /[sSpPlLtT]/ && letters[-2] !~ /[aeiouAEIOU]/
        piglatinized = letters.join("") + "ay"
      else
        piglatinized = letters.join("") + "way"
      end
    end
    piglatinized
  end

  def split(words)
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
