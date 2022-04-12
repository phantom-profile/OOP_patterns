require_relative 'data_present_decorator'

class ForRegularDecorator < DataPresentDecorator
  def as_json
    super.merge(
      {
        wallet_id: '*****',
        lastname: '*****'
      }
    )
  end
end