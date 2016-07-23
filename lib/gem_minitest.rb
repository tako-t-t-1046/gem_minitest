require "gem_minitest/version"

module GemMinitest
  # Your code goes here...
  class Main 
    def odd?(n)
      if n % 2 == 1
        return true
      else
        return false
      end
    end
    
    def check_number?(n)
      length = n.to_s.length
      if length >= 5 && n % 2 == 0
          return true
      elsif length == 4 && n % 2 == 0 && n > 0
          return true
      else
        return false
      end
    end

    def enough_length?(str)
      length = str.length
      if length > 2 && length < 9
          return true
      else
        return false
      end
    end

    def divide(num1, num2)
      num1/num2
    end

    def fizz_buzz(num)
      result = ''
      if num % 3 == 0
	result += 'Fizz'
      end
      if num % 5 == 0
	result += 'Buzz'
      end
      
      result
    end

    def say_Hello
      print 'Hello'
    end

  end
end
