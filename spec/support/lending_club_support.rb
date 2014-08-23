module LendingClubSupport
  def stub_lending_club_secondary_market
  stub_request(:get, "https://resources.lendingclub.com/SecondaryMarketAllNotes.csv").
    with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Host'=>'resources.lendingclub.com', 'User-Agent'=>'Ruby'}).
    to_return(:status => 200, :body => secondary_market_all_notes_csv, :headers => {})
  end

  def secondary_market_all_notes_csv
    File.open("./spec/fixtures/SecondaryMarketAllNotes.csv", "r")
  end
end
