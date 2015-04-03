class Bob

  def hey(remark)
    case remark
    when "I HATE YOU" then  "Whoa, chill out!"
    when "Tom-ay-to, tom-aaaah-to." then  "Whatever."
    end
  end

# Psuedo-code
# If upcasing the input is equal to the input, then the comment is shouting and should result in "Woah, chill out!" 
# If input is junky, like blank lines, tabs, etc. then give a "Fine. be that way."
# If ? is the last character of a string, then output "Sure."
# If Not a ? and not all upcase, and not blank (eg. 'else') then output "Whatever"
end
