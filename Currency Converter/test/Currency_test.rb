require "minitest/autorun"
require "../src/Currency"

class Currency_test < Minitest::Test
  def setup
    @dollar = Currency.new("ruby")
  end

  def test_that_name_is_set
    assert_equal "ruby", @dollar.get_name
  end

end