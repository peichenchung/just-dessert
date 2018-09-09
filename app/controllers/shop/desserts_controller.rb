class Shop::DessertsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_shop

  def index
    @desserts = current_user.shop.desserts
  end

  def new
    @dessert = Dessert.new
  end

  def create
    @dessert = Dessert.new(dessert_params)
    @dessert.shop_id = current_user.shop.id
    if @dessert.save
      flash[:notice] = "甜點上架完成"
      redirect_to shop_desserts_path
    else
      flash.now[:alert] = "甜點上架失敗!!"
      render :new
    end
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :price, :image, :description, :shop_id)
  end
end
