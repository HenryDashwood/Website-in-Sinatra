class WordFormatter

  def initialize(address)
    @address = address
  end

  def upcase_postcode
    @address[:postcode] = @address[:postcode].upcase
    return @address
  end

  def camelcase(string)
    array = string.split
    result = array.map {|word| word.capitalize} 
    return result.join 
  #   @parts = @address[:location].split(" ")
  #   newAddress = ""
  #   for part in parts
  #     newAddress += part.capitalize()
  #   end
  #   return newAddress
  # end

  # @address[:building].capitalize.strip
  # @address[:address].capitalize.strip
  end
end