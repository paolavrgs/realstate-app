class Product < ApplicationRecord
  has_many :cotizations
  has_one_attached :image
end
