Rails.application.routes.draw do

  root 'welcome#index'

  resources :md5
  resources :md5crack
  resources :unicode
  resources :base64
  resources :bmi
  resources :password
  resources :weekpassword
  resources :qrcode
  resources :crontab

end
