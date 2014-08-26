require 'rails_helper'

describe LoanMapper do
  include LendingClubSupport
  describe "#filter" do
    let(:input_hash) { secondary_market_all_note_hash }

    subject { LoanMapper.new(input_hash) }

    it "saves data" do
      subject.save
      expect(Loan.count).to eq 1
    end
  end
end
