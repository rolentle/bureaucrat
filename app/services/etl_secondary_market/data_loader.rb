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
    ModelMapper.map_n_save(attributes)
  end

  class ModelMapper
    def self.map_n_save(attrs)
      new(attrs)
    end

    def initialize(attr)
      map_to_model attr
    end

    def map_to_model(attr)
      [OrderMapper, NoteMapper, LoanMapper, LoanLogMapper].each do |klass|
        Resque.enqueue(klass, attr)
      end
    end
  end
end

