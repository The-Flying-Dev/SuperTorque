class Order < ApplicationRecord 

  has_many :line_items, dependent: :destroy
  

  enum pay_type: {
    "Credit card" => 0,
    "Purchase order" => 1,
    "Crypto" => 2,    
  }

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item 
    end
  end

  validates :name, :email, :address, presence: true
  validates :pay_type, inclusion: pay_types.keys

end
