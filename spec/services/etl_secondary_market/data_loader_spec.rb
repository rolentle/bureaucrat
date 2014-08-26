require 'spec_helper'

describe EtlSecondaryMarket::DataLoader do
  include LendingClubSupport
  describe ".execute" do
    before do
      Resque.redis.flushall
      @before_queue_data = Resque.redis.data.dup
      EtlSecondaryMarket::DataLoader.execute secondary_market_all_notes_csv.read
    end

    it "adds OrderMapper was sent to queue" do
      @after_queue_data = Resque.redis.data
      expect(@after_queue_data).not_to eq @before_queue_data
    end
  end
end
