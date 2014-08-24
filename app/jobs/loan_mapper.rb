class LoanMapper < BaseMapper
  @queue = :data_fetch
  def filter(attr)
      {
        lc_loan_id: attr["LoanId"],
        status: attr["Status"],
        fico_end_range: attr["FICO End Range"],
        date_time_listed: format_date(attr["Date/Time Listed"]),
        never_late: attr["NeverLate"],
        klass: attr["LoanClass"],
        maturity: attr["LoanMaturity"],
        interest_rate: attr["Interest Rate"]
      }
  end

  def save
    Loan.find_or_create_by(lc_loan_id: @attrs[:lc_loan_id]).update_attributes(@attrs)
  end
end
