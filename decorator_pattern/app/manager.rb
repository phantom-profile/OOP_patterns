class Manager
  attr_reader :allowed_stats, :is_admin

  def initialize
    @is_admin = false
    @allowed_stats = false
  end

  def promote_to_admin
    @is_admin = true
  end

  def allow_statistics
    @allowed_stats = true
  end

  def access_level
    return 'full' if @is_admin && @allowed_stats
    return 'admin' if @is_admin
    return 'statistics' if @allowed_stats

    'regular'
  end
end