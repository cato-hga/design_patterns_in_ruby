class TaxMan
  def update(changed_employee)
    puts "Send #{changed_employee.name} a new tax bill!"
  end
end

tax_man = TaxMan.new
fred.add_observer(tax_man)
