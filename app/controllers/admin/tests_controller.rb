class Admin::TestsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index #管理員後台首頁
    
  end
  
end
