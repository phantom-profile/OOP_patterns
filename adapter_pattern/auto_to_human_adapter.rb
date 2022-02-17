# frozen_string_literal: true

# adapter for boxes specially for humans to carry cargo effectively
class AutoToHumanAdapter
  def initialize(box)
    @box = box
  end

  def cost
    @box.cost
  end

  def moved_by(load_system = '', label = '')
    if load_system == 'humans'
      @box.moved_by 'automatic', label
    else
      @box.moved_by load_system, label
    end

    self
  end
end
