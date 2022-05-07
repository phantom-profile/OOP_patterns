class User
  DEFAULT_PASSWORD_SIZE = 8

  attr_accessor :password, :email, :name, :phone

  # @param [String] name
  # @param [String] email
  # @param [String] phone
  # @param [String] password
  def initialize(name, email, phone, password)
    @name = name
    @phone = phone
    @email = email
    @password = password
  end

  def as_json
    {
      name: @name,
      phone: @phone,
      email: @email,
      password: '*' * DEFAULT_PASSWORD_SIZE
    }
  end

  def valid?
    return false if @name.empty? || @email.empty? || @phone.empty? || @password.empty?
    return false if @password.size < DEFAULT_PASSWORD_SIZE
    return false unless @email.include?('@')
    true
  end
end