class EtlSecondaryMarket::DataFetcher
  def initialize(url)
    puts "curling"
    @response = Curl.get(url)
    puts "curling finished"
  end

  def body
    @response.body
  end
end
