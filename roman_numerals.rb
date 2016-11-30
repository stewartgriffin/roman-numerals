module BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman 
    output = String.new
    temp = self
    
    if temp == 5
      output.concat('V')
    elsif temp == 4
      output.concat('IV')
    else
      while temp > 0
        output.concat('I')
        temp -= 1
      end
    end
    output
  end
end