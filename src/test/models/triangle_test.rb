require 'test/unit/autorunner'
require 'test/unit'
require File.dirname(__FILE__) +  '/../../../../src/main/models/triangle.rb'


class TriangleTest < Test::Unit::TestCase

  def setup
    @triangle = Triangle.new([[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]])
  end

  def test_get_next_max_to_one_item
    expect_max = 6
    max = @triangle.get_next_max(0, 0)
    assert_equal(expect_max, max, "Max value wrong!")
  end

  def test_get_next_max_two_itens
    expect_max = 5
    max = @triangle.get_next_max(1, 0)
    assert_equal(expect_max, max, "Max value wrong!")
  end

  def test_get_next_max_three_itens
    expect_max = 7
    max = @triangle.get_next_max(2, 1)
    assert_equal(expect_max, max, "Max value wrong!")
  end

  def test_get_next_max_four_itens
    expect_max = 8
    max = @triangle.get_next_max(3, 1)
    assert_equal(expect_max, max, "Max value wrong!")
  end

  def test_get_index
    expect_index = 2
    index = @triangle.get_index(2, 1)
    assert_equal(expect_index, index, "Index wrong!")
  end


end