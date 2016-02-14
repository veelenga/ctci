module ArraysAndStrings
  # Question:
  #   Implement an algorithm to determine if a string has all unique characters.
  #   What if you cannot use additional data structures ?
  #
  # Solution:
  #   Create a hash of char occurrences.
  #
  class UniqueChars
    # Examples:
    #
    # ```
    # a = UniqueChars.new
    # a.solve("false")      #=> false
    # a.solve("non-unique") #=> true
    # a.solve("")           #=> false
    # ```
    def solve(input : String) : Bool
      return false if input.size > 256

      char_set = {} of Char => Bool
      input.each_char do |ch|
        return true if char_set.has_key? ch
        char_set[ch] = true
      end
      false
    end
  end
end
