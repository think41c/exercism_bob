class Bob

  attr_accessor :remark

  def hey(remark)
    @remark = remark
    @bob_says = {
      question: "Sure.",
      all_caps: "Whoa, chill out!", 
      empty:    "Fine. Be that way.",
      other:    "Whatever."
      }

      @bob_says.fetch(type_input) 
  end

  def type_input 
    if remark == " "
      :empty
    elsif remark.end_with?("?")
      :question
    elsif remark == remark.upcase 
      :all_caps
    else
      :other
    end
  end

end

a = Bob.new
p a.hey(" ")