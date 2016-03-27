class Exchange
  def initialize
    @rates = Hash.new
  end
  def getExchangeCode(fromCurrency, toCurrency)
    currencyCode = fromCurrency[0,3] + toCurrency[0,3]
  end
  
  def addOrUpdateExchangeRate(fromCurrency, toCurrency, rate)
    #    normal exchange rate
    currencyCode = getExchangeCode(fromCurrency, toCurrency)
    @rates[currencyCode]= rate
    #    reverse exchange rate
    currencyCode = getExchangeCode(toCurrency, fromCurrency)
    rate = 1.0/rate
    @rates[currencyCode] = rate
    puts @rates.to_s
    
  end
  def getRate(fromCurrency, toCurrency)
    currencyCode = getExchangeCode(fromCurrency, toCurrency)
    puts currencyCode
    @rates[currencyCode]
  end
end