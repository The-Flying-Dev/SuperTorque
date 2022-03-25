class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_cost 
    product.price * quantity
  end
end
