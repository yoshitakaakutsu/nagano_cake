class Product < ApplicationRecord
  belongs_to :ganre
   has_one_attached :image
end
