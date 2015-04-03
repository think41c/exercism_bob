class Bob
  def hey(remark)
    
    bob_says = {
      question: "Sure.",
      all_caps: "Whoa, chill out!", 
      empty:    "Fine. Be that way.",
      other:    "Whatever."
      }

    if remark == " "
      bob_says.fetch(:empty) 
    elsif remark == remark.upcase
      bob_says.fetch(:all_caps)
    elsif remark.end_with?("?")
      bob_says.fetch(:question)
    else 
      bob_says.fetch(:other)
    end
  end
end

a = Bob.new
p a.hey(" ")

#   def hey(input)
#     Responder.new(input).response
#   end

#   class Responder
#     attr_accessor :input

#     def initialize(input)
#       self.input = input
#     end

#     def input
#       @input ||= ""
#     end

#     def response
#       RESPONSES.fetch(input_type)
#     end

#     def input_type
#       if input == ""
#         :silence
#       elsif input == input.upcase
#         :anger
#       elsif input.end_with? "?"
#         :question
#       else
#         :else
#       end
#     end

#   end
# end