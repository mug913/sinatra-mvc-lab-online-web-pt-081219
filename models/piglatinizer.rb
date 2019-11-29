class PigLatinizer

  attr_accessor :words

  def initialize
  end

  def piglatinize(words)
    letters = self.split(words)

    if letters[0] =~ /[aeiouAEIOU]/
      piglatinized = letters.join("") + "way"
    else
      piglatinized = letters.join("") + "ay"
    end
    piglatinized
  end

  def split(words)
      count = 0
      start = []
      letters = words.split("")
      letters.each do |letter|
        binding.pry
        break if letter =~ /[aeiouAEIOU]/
          count += 1
        end
        binding.pry
        start << letters.shift(count)
        binding.pry
      letters = letters + start
      letters
    end

end
