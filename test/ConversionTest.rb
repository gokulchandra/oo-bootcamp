require "minitest/autorun"
require "../src/Exchange"
require "../src/Converter"
require "../src/currency"

class ConversionTest < Minitest::Test
  def setup
    @dollar = Currency.new("Dollar")
    @rupee = Currency.new("Rupee")
    @exchange = Exchange.new
    @exchange.addOrUpdateExchangeRate(@dollar.get_name, @rupee.get_name, 64)
    @converter = Converter.new
  end

  def test_that_conversion_is_correct
    assert_equal 6400, @converter.performConversion(@dollar.get_name, @rupee.get_name, 100, @exchange)
  end
  
  def test_that_reverse_conversion_is_correct
    assert_equal 1.5625, @converter.performConversion(@rupee.get_name,  @dollar.get_name, 100, @exchange)
  end
end