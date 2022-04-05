class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy


  #if product exists then increase quantity else builds new line item
  def add_product(product)
    current_item = line_items.find_by(product_id: product.id) #returns existing or nil
    if current_item
      current_item.quantity += 1
    else 
      current_item = line_items.build(product_id: product.id)
    end
    current_item
  end

  
  def total_cost
    line_items.to_a.sum { | item | item.total_cost }
  end

end
