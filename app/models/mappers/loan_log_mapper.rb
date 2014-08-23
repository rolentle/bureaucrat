class LoanLogMapper < BaseMapper
  def filter(attr)
    {
      lc_loan_id: attr["LoanId"],
      days_since_last_payment: attr["DaysSinceLastPayment"],
      credit_score_trend: attr["CreditScoreTrend"],
      remaining_payments: attr["Remaining Payments"],
    }
  end

  def save
    LoanLog.find_or_create_by(lc_loan_id: @attrs[:lc_loan_id], days_since_last_payment: @attrs[:days_since_last_payment]).update_attributes(@attrs)
  end
end
