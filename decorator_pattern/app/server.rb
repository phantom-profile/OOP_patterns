require 'awesome_print'

require_relative '../presenting/for_regular_decorator'
require_relative '../presenting/for_statistics_decorator'
require_relative 'person'
require_relative 'manager'

class Server
  def initialize(data)
    @data = data
  end

  def respond_for(current_user)
    data = @data
    if current_user.allowed_stats
      data = ForStatisticsDecorator.new data
    end

    unless current_user.is_admin
      data = ForRegularDecorator.new data
    end

    data.as_json
  end
end

data = Person.new(name: 'Joe', lastname: 'Chapkin', id: 111, wallet_id: 33112, produced_goods: [2, 3, 6, 3, 2])
server = Server.new(data)

full_manager = Manager.new
full_manager.promote_to_admin
full_manager.allow_statistics

statistics_manager = Manager.new
statistics_manager.allow_statistics

admin = Manager.new
admin.promote_to_admin

intern_manager = Manager.new

ap server.respond_for full_manager
ap server.respond_for statistics_manager
ap server.respond_for admin
ap server.respond_for intern_manager

# OUTPUT
# {
#                       :id => 111,
#                     :name => "Joe",
#                 :lastname => "Chapkin",
#                :wallet_id => 33112,
#     :average_productivity => 3.2
# }
# {
#                       :id => 111,
#                     :name => "Joe",
#                 :lastname => "*****",
#                :wallet_id => "*****",
#     :average_productivity => 3.2
# }
# {
#            :id => 111,
#          :name => "Joe",
#      :lastname => "Chapkin",
#     :wallet_id => 33112
# }
# {
#            :id => 111,
#          :name => "Joe",
#      :lastname => "*****",
#     :wallet_id => "*****"
# }