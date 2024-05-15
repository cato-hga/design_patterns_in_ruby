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
    @salary = new_salary
    notify_observers
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



