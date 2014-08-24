class BaseMapper
  attr_reader :attrs

  def self.perform(attrs)
    puts "starting #{self} job with #{attrs}"
    new(attrs).save
    puts "#{self} job finished"
  end

  def initialize(attrs)
    @attrs = filter attrs
  end

  def format_date(str)
    Date._strptime(str, '%m/%d/%Y')
  end

  def filter(attrs)
    raise 'Filter method must be defined in the model'
  end
end
