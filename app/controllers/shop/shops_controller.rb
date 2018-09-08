class Shop::ShopsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_shop

  def index #店家後台首頁
    
  end
  
end
