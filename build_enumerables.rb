# map



# arr.map! do |i|
#   i+5
# end


class Array
  def pam(num)
    i = 0
    while i < self.length
      self[i] = self[i] + num
      i+=1
    end
    return self
  end
end


arr = [1,2,3,4]
p arr.pam(2)