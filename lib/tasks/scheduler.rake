task :fetch_data => :environment do
  puts 'starting to fetch data'
  EtlSecondaryMarket.execute
  puts 'data fetched'
end
