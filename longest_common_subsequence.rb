def lcs(x, y)
    common_arr = []
    x_arr = x.split("").sort
    y_arr = y.split("").sort
    x_arr.each do |xchar|
        if y_arr.any?{|ychar|ychar == xchar}
        common_arr << xchar
        end
    end
    return common_arr.join("")
end

p lcs("a", "b")
p lcs("abcdef", "abc")
p lcs("nottest", "nottestayaytest")

