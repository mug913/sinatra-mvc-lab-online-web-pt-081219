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
      start = []
      letters = words.split("")
      letters.map do |letter|
        binding.pry
        if letter !=~ /[aeiouAEIOU]/
          start << letters.shift
        else
          break
        end
        binding.pry
      end
      letters = letters + start
      letters
    end

end
