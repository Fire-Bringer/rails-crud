class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
