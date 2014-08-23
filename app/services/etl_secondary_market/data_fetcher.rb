class EtlSecondaryMarket::DataFetcher
  def initialize(url)
    uri = URI(url)
    @response = Net::HTTP.get uri
  end

  def body
    @response
  end
end
