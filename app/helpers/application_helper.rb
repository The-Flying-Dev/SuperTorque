module ApplicationHelper
  
  def pounds(number)
    number_to_currency(number, { unit: :"£"})
  end
  
end
