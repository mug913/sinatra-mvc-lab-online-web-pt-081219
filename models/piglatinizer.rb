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
      letters.each do |letter|
        break if letter =~ /[aeiouAEIOU]/
          start << letters.shift
        end
      end
      letters = letters + start
      letters
    end

end
