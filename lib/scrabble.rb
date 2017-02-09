
class String
  define_method(:scrabble)do
  scrabble_array = {"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1, "L"=>1, "N"=>1,
    "R"=>1,"S"=>1, "T"=>1, "D"=>2, "G"=>2, "B"=>3, "M"=>3, "c"=>3, "P"=>3,
     "F"=>4, "H"=>4, "v"=>4, "W"=>4, "Y"=>4, "K"=>5, "J"=>8, "X"=>8, "Q"=>10,
      "Z"=>10 }
        letter_array = scrabble_array.keys()
        inputs = self.upcase!()
        inputs = self.split('')
        total = 0
    inputs.each() do |input|
      letter_array.each() do |letter|
        if letter == input
        total += scrabble_array.fetch(letter)
        else
          "zero"
        end
      end
    end
    total
  end
end

# alternative
# class String
#   define_method(:scrabble_score) do
#     scrabble = {"A"=>1, "E"=>1, "I"=>1, "O"=>1, "U"=>1, "L"=>1, "N"=>1,
#       "R"=>1,"S"=>1, "T"=>1, "D"=>2, "G"=>2, "B"=>3, "M"=>3, "C"=>3, "P"=>3,
#        "F"=>4, "H"=>4, "v"=>4, "W"=>4, "Y"=>4, "K"=>5, "J"=>8, "X"=>8, "Q"=>10,
#         "Z"=>10 }
#     total = 0
#     word  = self.upcase()
#     letters = word.split("")
#     letters.each()  do |letter|
#       total += scrabble[letter]
#
#     end
#   total
#   end
# end
