class Product < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
  validates :stock, presence: true, numericality: { only_integer:true , greater_than_or_equal_to: 0 }
  validates :description, presence: true
end
