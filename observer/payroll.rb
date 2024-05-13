class Payroll
  def update(changed_employee)
    puts "Cut a new check for #{changed_employee}!"
    puts "His salary is now #{changed_employee.salary}!"
  end
end