class Shop < ApplicationRecord
  validates_presence_of :shopname
  mount_uploader :logo, LogoUploader #for logo
  mount_uploader :image, ImageUploader #店家形象圖
end
