module LendingClubSupport
  def stub_lending_club_secondary_market
    stub_request(:get, "https://resources.lendingclub.com/SecondaryMarketAllNotes.csv").
      to_return(:status => 200, :body => secondary_market_all_notes_csv, :headers => {})
  end

  def secondary_market_all_notes_csv
    File.open("./spec/fixtures/SecondaryMarketAllNotes.csv", "r")
  end

  def secondary_market_all_note_hash
    {
      "LoanId" => "5041546",
      "NoteId" => "23265892",
      "OrderId" => "7230920",
      "OutstandingPrincipal" => "0.01",
      "AccruedInterest" => "0.0",
      "Status" => "Current",
      "AskPrice" => "0.01",
      "Markup/Discount" => "0.00",
      "YTM" => "--",
      "DaysSinceLastPayment" => "24",
      "CreditScoreTrend" => "UP",
      "FICO End Range" => "725-729",
      "Date/Time Listed" => "06/11/2014",
      "NeverLate" => "true",
      "Loan Class" => "D1",
      "Loan Maturity" => "36",
      "Original Note Amount" => "25.0",
      "Interest Rate" => "17.77",
      "Remaining Payments" => "1",
      "Principal + Interest" => "0.01",
    }
  end
end
