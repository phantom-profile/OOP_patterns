class Person
  attr_reader :produced_goods

  def initialize(name:, lastname:, id:, wallet_id:, produced_goods:)
    @name = name
    @lastname = lastname
    @id = id
    @wallet_id = wallet_id
    @produced_goods = produced_goods
  end

  def as_json
    {
      id: @id,
      name: @name,
      lastname: @lastname,
      wallet_id: @wallet_id
    }
  end
end