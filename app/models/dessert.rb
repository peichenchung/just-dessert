class Dessert < ApplicationRecord
  validates_presence_of :name
  mount_uploader :image, ImageUploader #產品(甜點)圖片
end
