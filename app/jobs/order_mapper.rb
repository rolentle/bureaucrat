class OrderMapper < BaseMapper
  @queue = :data_fetch
  def filter(attr)
    {
      lc_order_id: attr["OrderId"],
      lc_note_id: attr["NoteId"],
      ask_price: attr["AskPrice"],
      markup_discount: attr["Markup/Discount"],
      date_time_listed: format_date(attr["Date/Time Listed"]),
      ytm: attr["YTM"],
    }
  end

  def save
      Order.find_or_create_by(lc_order_id: @attrs[:lc_order_id]).update_attributes(@attrs)
  end
end
