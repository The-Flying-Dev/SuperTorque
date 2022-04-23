module ProductsHelper
  #custom module to to display currency in pounds
  
  def pounds(number)
    number_to_currency(number, { unit: :"£"})
  end
end
