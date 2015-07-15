# Employee Class with Observers
class Employee
  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  def add_observer(observer)
    @observers << observer
    puts "Observer '#{observer.class}' registered."
  end

  def delete_observer(observer)
    @observers.delete observer
  end

  private

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end
