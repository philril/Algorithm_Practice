# Get product of all integers except integer at current index
## NOT DONE YET! FIRST DRAFT!

# def get_products_of_all_ints_except_at_index(input)
#   array_of_products = []
#   i = 0
#   while i < input.length
#     array_of_products << input.reject{|num| num == input[i]}.reduce(:*)
#     i+=1
#   end
#   return array_of_products
# end

#REFACTOR 1:

# def get_products_of_all_ints_except_at_index(input)
#   array_of_products = []
#   input.each{|num1|array_of_products << input.reject{|num2|num2==num1}.reduce(:*)}
#   return array_of_products
# end

#REFACTOR 2:

def get_products_of_all_ints_except_at_index(input)
  input.inject(Array.new){|accum,num1|accum<<input.reject{|num2|num2==num1}.reduce(:*)}
end

input = [1, 2, 3, 4, 5]
p get_products_of_all_ints_except_at_index(input) == [120, 60, 40, 30, 24]