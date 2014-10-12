require 'rails_helper'

describe Loan, :type => :models do
  it 'has notes' do
    loan = Loan.create(
      lc_loan_id: 1111111,
      status: "Current",
      fico_end_range: "725-729",
      date_time_listed: Time.now,
      never_late: true,
      klass: "A1",
      maturity: "60",
      interest_rate: "7.59"
    )
    Note.create(
      lc_loan_id:              loan.lc_loan_id,
      lc_note_id:              1234567,
      original_note_amout:     25.00,
      outstanding_principal:   23.50,
      accured_interest:        0.79
    )
    Note.create(
      lc_loan_id:              loan.lc_loan_id,
      lc_note_id:              2345678,
      original_note_amout:     25.00,
      outstanding_principal:   23.50,
      accured_interest:        0.79
    )
    expect(loan.notes.length).to eq 2
  end
end
