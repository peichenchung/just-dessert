Rails.application.routes.draw do
  
  devise_for :users
  root "tests#index" #前台首頁

  namespace :admin do
    root "tests#index" #管理員後台首頁
  end

end
