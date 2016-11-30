module BookKeeping
  VERSION = 2
end

class Fixnum
  def to_roman 
    output = String.new
    temp = self
    while temp > 0
      output.concat('I')
      temp -= 1
    end
    output
  end
end