class PigLatinizer

  def piglatinize(string)
    x = string.split(" ")
    y = x.collect {|word| piglatinize_word(word)}
    y.join(" ")
  end

  def piglatinize_word(word)
    first = word[0].downcase
    if ["a", "e", "i", "o", "u"].include?(first)
      word << "way"
    else
      consanant = []
      consanant << word[0]
      if ["a", "e", "i", "o", "u"].include?(word[1]) == false
        consanant << word[1]
        if ["a", "e", "i", "o", "u"].include?(word[2]) == false
          consanant << word[2]
        end
      end
      word[consanant.length..-1]+ consanant.join + "ay"
    end
  end
end
