class EtlSecondaryMarket::DataLoader
  def self.execute(data)
    new(data)
  end

  def initialize(data)
    parse_n_load data
  end

  def parse_n_load(data)
    CSV.parse(data, headers: true) do |row|
      map_n_save row.to_hash
    end
  end

  def map_n_save(attributes)
    ModelMapper.new(attributes).save
  end

  class ModelMapper
    def initialize(attr)
      map_to_model attr
    end

    def save
      [@order, @note, @loan,@loan_log].each(&:save)
    end

    def map_to_model(attr)
      @order = OrderMapper.new attr
      @note  = NoteMapper.new  attr
      @loan  = LoanMapper.new  attr
      @loan_log = LoanLogMapper.new attr
    end
  end
end

