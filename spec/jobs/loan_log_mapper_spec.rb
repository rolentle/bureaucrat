require 'rails_helper'

describe LoanLogMapper do
  include LendingClubSupport
  describe "#filter" do
    let(:input_hash) { secondary_market_all_note_hash }

    subject { LoanLogMapper.new(input_hash) }

    it "saves data" do
      subject.save
      expect(LoanLog.count).to eq 1
    end
  end
end
