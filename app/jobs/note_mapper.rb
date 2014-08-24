class NoteMapper < BaseMapper
  @queue = :data_fetch
  def filter(attr)
      {
        lc_loan_id: attr["LoanId"],
        lc_note_id: attr["NoteId"],
        original_note_amout: attr["Original Note Amount"],
        outstanding_principal: attr["OutstandingPrincipal"],
        accured_interest: attr["AccruedInterest"],
      }
  end

  def save
      Note.find_or_create_by(lc_note_id: @attrs[:lc_note_id]).update_attributes(@attrs)
  end
end
