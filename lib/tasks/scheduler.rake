task :fetch_data => :environment do
  start_time = Time.now
  puts "starting to fetch data @ #{start_time}"
  EtlSecondaryMarket.execute
  end_time = Time.now
  puts "data fetched @ #{end_time}"
end
