# frozen_string_literal: true

require_relative 'owner_info'
require_relative 'building_info'
require_relative 'house_info'

class HouseRegister
  def register_buildings_for(owner, family:)
    building = BuildingInfo.new 'Moscow', 'Existing Street', 3
    owners_house = HouseInfo.new(owner, building)

    family.map.with_index do |member, i|
      house = owners_house.clone
      house.owner.firstname = member[0]
      house.owner.age = member[1]
      house.building.number += i
      house
    end
  end
end

owner = OwnerInfo.new 'Oldest', 'Ruby', 111
family = [
  ['Joe', 31],
  ['Billy', 44],
  ['Chapkin', 44],
  ['Name', 21]
]

puts HouseRegister.new.register_buildings_for owner, family: family

# OUTPUT
# HOUSE INFO:
# 	STREET: Moscow Existing Street - 3
# OWNER INFO:
# 	OWNER: Joe Ruby
# 	AGE: 31
# HOUSE INFO:
# 	STREET: Moscow Existing Street - 4
# OWNER INFO:
# 	OWNER: Billy Ruby
# 	AGE: 44
# HOUSE INFO:
# 	STREET: Moscow Existing Street - 5
# OWNER INFO:
# 	OWNER: Chapkin Ruby
# 	AGE: 44
# HOUSE INFO:
# 	STREET: Moscow Existing Street - 6
# OWNER INFO:
# 	OWNER: Name Ruby
# 	AGE: 21
