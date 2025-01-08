class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  # validates :status, inclusion: { in: %w[pending completed canceled] }

end
