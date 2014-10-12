require 'rails_helper'

describe 'when visiting loans pages', :type => :feature do
  let(:loan_1) { @loan_1 ||= create(:loan, lc_loan_id: 1111111) }
  let(:loan_2) { @loan_2 ||= create(:loan, lc_loan_id: 2222222) }

  before do
    loan_1
    loan_2
    visit '/loans'
  end

  it 'has loans' do
    expect(page).to have_content loan_1.lc_loan_id
    expect(page).to have_content loan_2.lc_loan_id
  end

  context 'and click on a loan link' do
    let(:note_1) { @note_1 ||= create(:note, lc_note_id: 3333333, lc_loan_id: loan_1.lc_loan_id) }
    let(:note_2) { @note_2 ||= create(:note, lc_note_id: 4444444, lc_loan_id: loan_1.lc_loan_id) }
    let(:bad_note) { @note_3 ||= create(:note, lc_note_id: 5555555, lc_loan_id: loan_2.lc_loan_id) }

    before do
      note_1
      note_2
      bad_note
      click_on(loan_1.lc_loan_id)
    end

    it 'goes to the loan page' do
      expect(page).to have_content loan_1.lc_loan_id
      expect(page).not_to have_content loan_2.lc_loan_id
    end

    it 'has notes' do
      expect(page).to have_content note_1.lc_note_id
      expect(page).to have_content note_2.lc_note_id
      expect(page).not_to have_content bad_note.lc_note_id
    end

  end
end
