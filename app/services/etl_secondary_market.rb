require 'csv'

class EtlSecondaryMarket
  def self.execute
    new.execute
  end

  def execute
    puts "sending data to the DataLoader"
    DataLoader.execute data
  end

  def data
    @data ||= fetch_data
  end

  def fetch_data
    puts 'sending web request'
    body = DataFetcher.new(source_url).body
    puts "body received: #{body[0..100]}"
    body
  end

  def source_url
    "https://resources.lendingclub.com/SecondaryMarketAllNotes.csv"
  end

end
