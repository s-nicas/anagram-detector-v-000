require 'pry'
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

def match(array)
  results = []
  letters_in_word= @word.split('')
  letters_count = Hash.new(0)

  letters_in_word.each do |characters|
  letters_count[characters] += 1
  end

  array.collect do |word|
    characters = word.split('')
      to_hash= characters.each_with_object(Hash.new(0)){|count, signs| signs[count]+=1}
        if to_hash == letters_count
          results << word
        end
      end
  results
end

end
