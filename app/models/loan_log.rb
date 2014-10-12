class LoanLog < ActiveRecord::Base
  belongs_to :loan, foreign_key: 'lc_loan_id'
end
