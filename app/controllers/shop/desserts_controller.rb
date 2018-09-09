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

  def edit
    @dessert = Dessert.find(params[:id])
  end

  def update
    @dessert = Dessert.find(params[:id])
    if @dessert.update(dessert_params)
      flash[:notice] = "更新成功"
      redirect_to shop_desserts_path(@dessert)
    else
      flash.now[:alert] = "更新失敗"
      render :edit
    end
  end

  def destroy
    @dessert = Dessert.find(params[:id])
    @dessert.destroy
    redirect_to shop_desserts_path
    flash[:alert] = "甜點已被刪除"
  end

  private

  def dessert_params
    params.require(:dessert).permit(:name, :price, :image, :description, :shop_id)
  end
end
