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
    if number == 5
      output.concat('V')
    elsif number == 4
      output.concat('IV')
    else
      while number > 0
        output.concat('I')
        number -= 1
      end
    end
    output
  end

end