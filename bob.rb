class Bob

  attr_accessor :remark

  def hey(remark)
    @remark = remark
    @bob_says = {
      question: "Sure.",
      all_caps: "Whoa, chill out!", 
      empty:    "Fine. Be that way!",
      other:    "Whatever."
      }
    @bob_says.fetch(type_input)
  end

  def type_input 
    @remark = remark.strip
    remark.gsub!(',', '')
    remark.gsub!(' ', '')

    check = remark.scan(/[1234567890?]/)   # check will be only the numbers and ? of 'remark'

    if remark.length == 0 
      :empty  
    elsif (remark == remark.upcase) && remark.length != check.join.length
      :all_caps
    elsif (remark.end_with?("?") && remark.length == check.join.length) || remark.end_with?("?")
      :question
    else
      :other
    end
  end
end
