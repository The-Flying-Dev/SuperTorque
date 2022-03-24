class Product < ApplicationRecord

  #validations
  
  validates :title, :description, :image_url, presence: true
  validates :title, uniqueness: true #, length: { minimum: 10 }
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG or PNG image.'
  }

  has_many :line_items

  before_destroy :not_line_item

  private 

  #hook method, called at a given time during an objects life
  def not_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end

end
