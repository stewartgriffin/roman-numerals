module BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman 
    find_roman_number(self)
  end
  
  private
  
  def find_roman_number(number)
    output = String.new
    
    while (number > 0) do
      if number >= 9
        output.concat('IX')
        number -= 9
      elsif number >= 5
        output.concat('V')
        number -= 5
      elsif number >= 4
        output.concat('IV')
        number -= 4
      else
        while number > 0
          output.concat('I')
          number -= 1
        end
      end
    end 
    output
  end

end