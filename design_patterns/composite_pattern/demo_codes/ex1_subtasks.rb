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
class MakeBatterTask < Task
  def initialize
    super 'Make batter'
    @sub_tasks = []
    add_sub_task(AddDryIngredientsTask.new)
    add_sub_task(AddLiquidsTask.new)
    add_sub_task(MixTask.new)
  end

  def add_sub_task(task)
    @sub_tasks << task
  end

  def remove_sub_task(task)
    @sub_tasks.delete task
  end

  def time_required
    time = 0.0
    @sub_tasks.each { |t| time += t.time_required }
    time
  end
end
