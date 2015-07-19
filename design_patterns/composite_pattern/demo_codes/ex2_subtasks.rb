require './ex2_composite_task'

# Sub Task for Adding Dry Ingredients
class AddDryIngredientsTask < Task
  def initialize
    super 'Add Dry ingredients'
  end

  def time_required
    1.0
  end
end

# Sub Task for Adding Liquid
class AddLiquidsTask < Task
  def initialize
    super 'Add Liquid task'
  end

  def time_required
    2.0
  end
end

# Sub Task for Mixing
class MixTask < Task
  def initialize
    super 'Mix that batter up!'
  end

  def time_required
    3.0
  end
end

# Composite Task for Making Batter
class MakeBatterTask < CompositeTask
  def initialize
    super 'Make batter'
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end
end
