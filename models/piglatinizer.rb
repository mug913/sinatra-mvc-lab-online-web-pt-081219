class PigLatinizer

  attr_accessor :words

  def initialize
  end

  def piglatinize(words)
    letters = words.split("")
    first = letters.shift
    if first =~ /[aeiouAEIOU]/
      piglatinized = letters.join("") + first + "way"
    else
      piglatinized = letters.join("") + first + "ay"
    end
    piglatinized
  end

  def self.split(words)
      start = []
      letters = words.split("")
      letters.each do |letter|
        if letter !=~ /[aeiouAEIOU]/
          start << letters.shift
        else
          break
        end
      end
    end

end
