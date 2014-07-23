require "Integer_class"
require 'minitest/autorun'


class IntegerTest < MiniTest::Unit::TestCase

  def test_factors
    assert_equal [2,3], 6.factors
    assert_equal [2,3,4,6], 12.factors
    assert_equal [2,4,8], 16.factors
  end

  def test_prime_factors
    assert_equal [2,3], 6.prime_factors
    assert_equal [2,3], 12.prime_factors
    assert_equal [2], 16.prime_factors
  end

end