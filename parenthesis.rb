# Write a function that, given a sentence along with the position of an opening parenthesis, finds the corresponding closing parenthesis.

def parenthesis(input_string, num)
  open_parens = []
  close_parens = []

  input_string.split("").each_with_index do |char, index|
    if char == "("
      open_parens << index
    elsif char == ")"
      close_parens << index
    end
  end

  index = open_parens.index(num)
  return close_parens[(-1)-index]

end

string = "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
p parenthesis(string, 10)