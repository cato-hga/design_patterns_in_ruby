class Employee
  include Subject

  attr_accessor :name, :title, :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    old_salary = @salary
    @salary = new_salary

    if old_salary != new_salary
      changed
      notify_observers
    end
  end

  def title=(new_title)
    old_title = @title
    @title = new_title

    if old_title != new_title
      changed = true
      notify_observers(self)
    end
  end
end

# require 'observer'

# class Employee
#   include Observable

#   attr_reader :name, :address
#   attr_reader :salary

#   def initialize(name, title, salary)
#     @name = name
#     @title = title
#     @salary = salary
#   end

#   def salary=(new_salary)
#     @salary = new_salary
#     changed # this method is provided via the observer library
#     notify_observers # this method is provided via the observer library
#   end
# end

# class Employee
#   include Subject

#   attr_reader :name, :address
#   attr_reader :salary

#   def initialize(name, title, salary)
#     super()
#     @name = name
#     @title = title
#     @salary = salary
#   end

#   def salary=(new_salary)
#     @salary = new_salary
#     notify_observers
#   end
# end

# class Employee
#   attr_reader :name, :title
#   attr_reader :salary

#   def initialize(name, title, salary)
#     @name = name
#     @title = title
#     @salary = salary
#     @observers = []
#   end

#   def salary=(new_salary)
#     @salary = new_salary
#     notify_observers
#   end

#   def notify_observers
#     @observers.each do |observer|
#       observer.update(self)
#     end
#   end

#   def add_observer(observer)
#     @observers << observer
#   end

#   def delete_observer(observer)
#     @observers.delete(observer)
#   end
# end



