class ChartController < ApplicationController
  def index
    @finances = Finance.group_by_day(:date).sum(:amount)
  end
end
