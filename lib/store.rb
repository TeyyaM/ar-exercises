class Store < ActiveRecord::Base
  has_many :employees
  validates_associated :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_sell_clothing

  def must_sell_clothing
    unless womens_apparel || mens_apparel
      errors.add(:womens_apparel, 'Must sell this or men\'s apparel!')
      errors.add(:mens_apparel, 'Must sell this or women\'s apparel!')
    end
  end
end
