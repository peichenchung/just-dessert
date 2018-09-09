Rails.application.routes.draw do
  
  devise_for :users
  root "tests#index" #前台首頁

  namespace :admin do
    root "tests#index" #管理員後台首頁
  end

  namespace :shop do
    resources :shops
    resources :desserts
    root "shops#index" #店家後台首頁
  end

end
