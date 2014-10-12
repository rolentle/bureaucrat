FactoryGirl.define do
 factory :loan do
    lc_loan_id 1111111
    status "Current"
    fico_end_range "725-729"
    date_time_listed { 2.months.ago }
    never_late true
    klass "A1"
    maturity "60"
    interest_rate "7.59"
 end
end
