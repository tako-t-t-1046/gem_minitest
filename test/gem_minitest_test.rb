require 'test_helper'

class GemMinitestTest < Minitest::Test
  def setup
    @main = ::GemMinitest::Main.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::GemMinitest::VERSION
  end

  def test_odd?
    assert @main.odd?(1), '1 is odd'
    refute @main.odd?(2), '2 is not odd'
    assert @main.odd?(3), '3 is odd'
    refute @main.odd?(4), '4 is not odd'
  end

  def test_check_number?
    assert_equal true,  @main.check_number?(2016), '2016 is even'
    assert_equal false, @main.check_number?(3405), '3405 is not even'
    assert_equal true,  @main.check_number?(1000000), '1000000 is even'
    assert_equal false,  @main.check_number?(1000001), '1000000 is not even'
    assert_equal false, @main.check_number?(876), '876 is not 4 digit'
    assert_equal false, @main.check_number?(111), '111 is not 4 digit'
    assert_equal true,  @main.check_number?(-1000), '-1000 is even'
    assert_equal false,  @main.check_number?(-1999), '-1999 is not even'
    assert_equal true,  @main.check_number?(-1000000), '-1000000 is even'
    assert_equal false, @main.check_number?(-1000001), '-1000001 is not even'
    assert_equal false, @main.check_number?(-876), '-876 is not 4 digit'
    assert_equal false, @main.check_number?(-111), '-111 is not 4 digit'
  end

  def test_enough_length?
    assert @main.enough_length?('Hello!'), 'Hello! is 6 length'
    refute @main.enough_length?('Hi'), 'Hi is 2 length'
    assert @main.enough_length?('Ola'), 'Ola is 3 length'
    refute @main.enough_length?('123456789'), '123456789 is 9 length'
    assert @main.enough_length?('12345678'), '12345678 is 8 length'
  end
  def test_divide
    assert_equal 2, @main.divide(4, 2), '4/2 is 2'
    assert_equal -4, @main.divide(-20, 5), '-20/5 is -4'
    assert_equal 2, @main.divide(-10, -5), '-10/-5 is 2'
    assert_raises ZeroDivisionError,'0 divide throws exception' do
      @main.divide(10, 0)
    end
  end
  def test_fizz_buzz
    assert_match "Fizz", @main.fizz_buzz(6), '6 is Fizz'
    assert_match "Buzz", @main.fizz_buzz(25), '25 is Buzz'
    assert_match "FizzBuzz", @main.fizz_buzz(15), '15 is FizzBuzz'
    refute_match "Fizz", @main.fizz_buzz(13), '13 is not Fizz and Buzz'
    refute_match "Buzz", @main.fizz_buzz(13), '13 is not Fizz and Buzz'
  end
  def test_say_Hello
    assert_output("Hello"){ @main.say_Hello}
  end
end 
