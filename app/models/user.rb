class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :username, :role

  has_one :shop #設定user與shop的一對一關聯

  def admin?
    self.role == "admin"
  end

  def shop?
    self.role == "shop"
  end
  
end
