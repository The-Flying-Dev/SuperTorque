module ApplicationHelper
  
  def pounds(number)
    number_to_currency(number, { unit: :"£"})
  end

  def render_if(condition, record)
    if condition
      render record
    end
  end
  
end
