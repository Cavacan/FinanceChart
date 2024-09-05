class ChartController < ApplicationController
  def index
    @finances = Finance.group_by_day(:date).sum(:amount)
    Rails.logger.debug { "Finances Data: #{@finances.inspect}" }
  end
end
