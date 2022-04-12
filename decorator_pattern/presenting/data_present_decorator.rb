class DataPresentDecorator
  def initialize(data)
    @wrappee = data
  end

  def as_json
    @wrappee.as_json
  end

  protected

  def produced_goods
    @wrappee.produced_goods
  end
end