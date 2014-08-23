require 'rails_helper'

describe EtlSecondaryMarket::DataLoader do
  include LendingClubSupport
  describe ".execute" do
    before do
      EtlSecondaryMarket::DataLoader.execute secondary_market_all_notes_csv.read
    end

    it "adds Orders to the database" do
      expect(Order.count).to eq 9
    end

    it "adds Notes to the database" do
      expect(Note.count).to eq 9
    end

    it "adds Loans to the database" do
      expect(Loan.count).to eq 8
    end

    it "adds Loan Logs to the database" do
      expect(LoanLog.count).to eq 9
    end
  end
end
