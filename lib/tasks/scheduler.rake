task :fetch_data => :environment do
  puts 'starting to fetch data'
  uri = URI.parse(ENV["REDISTOGO_URL"] || "redis://localhost:6379/" )
  REDIS = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
  EtlSecondaryMarket.execute
  puts 'data fetched'
end
