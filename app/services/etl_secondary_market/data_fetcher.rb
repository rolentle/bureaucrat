class EtlSecondaryMarket::DataFetcher
  def initialize(url)
    @connection = Faraday::Connection.new( 'https://resources.lendingclub.com', :ssl => {
      :ca_file => OpenSSL::X509::DEFAULT_CERT_FILE,
      verify: false
    })
  end


  def body
    @connection.get("/SecondaryMarketAllNotes.csv").body
  end
end
