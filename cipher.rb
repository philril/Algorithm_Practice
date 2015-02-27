# Write an algorithm to decode a ciphered string. Determine the amount of letters to shift.

def cipher(shift)
  alpha = ("a".."z").to_a #Creates an array of all letters in the alphabet
  code_alpha = [] #create an empty array to put new coded letters into

  alpha.each do |letter|
    new_letter = letter.ord + shift
      if new_letter > 122
        overflow = new_letter - 123
        new_letter = overflow + 97
      elsif new_letter < 97
        overflow = 96 - new_letter
        new_letter = 122 - overflow
      end
        code_alpha << new_letter.chr
      end
  @cipher = Hash[code_alpha.zip alpha]
end

def solve_coded_message(coded_message)

  coded_sentence = coded_message.downcase.split("")
  decoded_sentence = []

  coded_sentence.each do |x|
    found_match = false
    @cipher.each_key do |y|

      case
        when x == y then #puts "I am comparing x and y. X is #{x} and Y is #{y}."
            decoded_sentence << @cipher[y]
            found_match = true
          break
        when x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" then decoded_sentence << " "
            found_match = true
          break
        when (0..9).to_a.include?(x) then decoded_sentence << x
            found_match = true
          break
        end
     end

      if not found_match
       decoded_sentence << x
     end

  end

   decoded_sentence = decoded_sentence.join("")

  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  end

  return decoded_sentence

end

#Test Code:

cipher(4)

p solve_coded_message("fpel$fpel#fpel") == "blah blah blah"

p solve_coded_message("m#gerx%jpc") == "i cant fly"

p solve_coded_message("wsqifshc$xipp#qi*e^wxsvc") == "somebody tell me a story"

p solve_coded_message("m^aerx%e&gsoi!") == "i want a coke!"

p solve_coded_message("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."

p solve_coded_message("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"

p solve_coded_message("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."

p solve_coded_message("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"

p solve_coded_message("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"
