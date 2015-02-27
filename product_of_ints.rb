# Get product of all integers except integer at current index
## NOT DONE YET! FIRST DRAFT!

def get_products_of_all_ints_except_at_index(input)
  input.each_with_index do |first_num, index|
    arr = []
      input.each do |second_num|
        unless first_num == second_num
          arr << first_num * second_num
        end
      end
    p arr
  end
end

# input = Array.new
# 5.times{input << rand(100)}
input = [1,7,3,4]
p get_products_of_all_ints_except_at_index(input)