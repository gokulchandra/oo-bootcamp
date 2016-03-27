class Converter
  def performConversion(fromCurrency, toCurrency, amount, exchange)
    rate = exchange.getRate(fromCurrency, toCurrency)
    puts "rate is " + rate.to_s
    convertedValue = amount * rate
    puts convertedValue
    convertedValue
  end
end