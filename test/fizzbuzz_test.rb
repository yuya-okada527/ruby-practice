require 'minitest/autorun'
require './lib/fizzbuzz'

class FizzBuzzTest < Minitest::Test

  def test_fizzbuzz
		assert_equal 'fizz', fizzbuzz(3)
		assert_equal 'buzz', fizzbuzz(10)
		assert_equal 'fizzbuzz', fizzbuzz(15)
		assert_equal '1', fizzbuzz(1)
  end
end