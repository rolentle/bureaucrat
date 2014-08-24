module LendingClubSupport
  def stub_lending_club_secondary_market
    stub_request(:get, "https://resources.lendingclub.com/SecondaryMarketAllNotes.csv").
      to_return(:status => 200, :body => secondary_market_all_notes_csv, :headers => {})
  end

  def secondary_market_all_notes_csv
    File.open("./spec/fixtures/SecondaryMarketAllNotes.csv", "r")
  end
end
