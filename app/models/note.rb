class Note < ActiveRecord::Base
  belongs_to :loan, class_name: 'Loan', primary_key: 'lc_loan_id', foreign_key: 'lc_loan_id'
end
