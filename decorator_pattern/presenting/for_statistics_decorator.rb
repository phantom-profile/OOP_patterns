require_relative 'data_present_decorator'

class ForStatisticsDecorator < DataPresentDecorator
  def as_json
    goods_stats = @wrappee.produced_goods.sum(0.0) / @wrappee.produced_goods.size

    super.merge(
      {
        average_productivity: goods_stats
      }
    )
  end
end