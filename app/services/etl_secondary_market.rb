require 'csv'

class EtlSecondaryMarket
  def self.execute
    new.execute
  end

  def execute
    DataLoader.execute data
  end

  def data
    @data ||= fetch_data
  end

  def fetch_data
    DataFetcher.new(source_url).body
  end

  def source_url
    "https://resources.lendingclub.com/SecondaryMarketAllNotes.csv"
  end

end
