require "minitest/autorun"
require "../src/Exchange"

class ExchangeTest < Minitest::Test
  def setup
    @exchange = Exchange.new
  end

  def test_that_exchange_value_is_set
    @exchange.addOrUpdateExchangeRate("Dollar", "Rupee", 64)
    assert_equal 64, @exchange.getRate("Dollar", "Rupee")
  end

end