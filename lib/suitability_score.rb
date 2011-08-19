require 'language_parser'

class SuitabilityScore
  include LanguageParser

  def initialize(product, customer)
    @product  = product
    @customer = customer
  end

  def value
    value = @product.size.even? ?
      1.5 * number_of_vowels_in(@customer): number_of_consonants_in(@customer)
    value *= 1.5 if share_common_factors?(@product, @customer)
    value
  end

end
