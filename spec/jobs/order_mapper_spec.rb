require 'rails_helper'

describe OrderMapper do
  include LendingClubSupport
  describe "#filter" do
    let(:input_hash) { secondary_market_all_note_hash }

    subject { OrderMapper.new(input_hash) }

    it "saves data" do
      subject.save
      expect(Order.count).to eq 1
    end
  end
end
