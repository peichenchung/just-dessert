class UsersController < ApplicationController

  def show #profile
    @user = User.find(params[:id])
  end

end
