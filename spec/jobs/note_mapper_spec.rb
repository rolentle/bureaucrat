require 'rails_helper'

describe NoteMapper do
  include LendingClubSupport
  describe "#filter" do
    let(:input_hash) { secondary_market_all_note_hash }

    subject { NoteMapper.new(input_hash) }

    it "saves data" do
      subject.save
      expect(Note.count).to eq 1
    end
  end
end
