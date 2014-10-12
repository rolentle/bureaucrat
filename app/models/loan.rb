class Loan < ActiveRecord::Base
  has_many :loan_logs, foreign_key: 'lc_loan_id'
  has_many :notes, primary_key: 'lc_loan_id', foreign_key: 'lc_loan_id'
end
