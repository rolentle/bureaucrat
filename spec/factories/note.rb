FactoryGirl.define do
  factory :note do
    lc_loan_id              1234567
    lc_note_id              1234567
    original_note_amout     25.00
    outstanding_principal   23.50
    accured_interest        0.79
  end
end
