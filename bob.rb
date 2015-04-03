class Bob
  def hey(remark)
    if remark.length < 5
      puts "Fine. Be that way."
    elsif remark == remark.upcase
      puts "Whoa, chill out!"
    elsif remark[-1] == "?"
      puts "Whatever."
    end
  end

# Psuedo-code
# If upcasing the input is equal to the input, then the comment is shouting and should result in "Woah, chill out!" 
# If input is junky, like blank lines, tabs, etc. then give a "Fine. be that way."
# If ? is the last character of a string, then output "Sure."
# If Not a ? and not all upcase, and not blank (eg. 'else') then output "Whatever"
end
a = Bob.new
a.hey("aaa??????????????")
