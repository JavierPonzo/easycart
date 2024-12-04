class Product < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many_attached :photos
end
