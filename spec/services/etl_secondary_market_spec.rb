require 'rails_helper'

describe EtlSecondaryMarket do
  include LendingClubSupport
  describe ".execute" do
    before do
      stub_lending_club_secondary_market
      EtlSecondaryMarket.execute
    end

    it "fetches the file from lending club" do
      expect(Order.count).to eq 9
    end
  end
end
