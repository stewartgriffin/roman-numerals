module BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman 
    number = self
    output = String.new
    
    while (number > 0) do
      if number >= 1000
        output.concat('M')
        number -= 1000
      elsif number >= 900
        output.concat('CM')
        number -= 900
      elsif number >= 500
        output.concat('D')
        number -= 500
      elsif number >= 400
        output.concat('CD')
        number -= 400
      elsif number >= 100
        output.concat('C')
        number -= 100
      elsif number >= 90
        output.concat('XC')  
        number -= 90
      elsif number >= 50
        output.concat('L')  
        number -= 50
      elsif number >= 40 
        output.concat('XL')
        number -= 40
      elsif number >= 10
        output.concat('X')
        number -= 10
      elsif number >= 9
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