class LineItem < ApplicationRecord
  belongs_to :order, optional: true 
  belongs_to :product, optional: true
  belongs_to :cart, optional: true
  

  def total_cost 
    product.price * quantity
  end
end
