module LanguageParser
  VOWELS     = /[aeiouy]/i
  CONSONANTS = /[b-df-hj-np-twxz]/i

  def number_of_vowels_in(string)
    string.scan(VOWELS).size
  end

  def number_of_consonants_in(string)
    string.scan(CONSONANTS).size
  end

  def share_common_factors?(string1, string2)
    shorter, longer = [string1.size, string2.size].sort
    2.upto(shorter/2).any?{|potential_factor| shorter % potential_factor == 0 && longer % potential_factor == 0}
  end

end
