require 'rails_helper'

describe EtlSecondaryMarket do
  include LendingClubSupport
  describe ".execute" do
    before do
      stub_lending_club_secondary_market
      EtlSecondaryMarket.execute
    end
  end
end
