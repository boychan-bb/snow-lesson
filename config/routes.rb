Rails.application.routes.draw do
  root "top#index"
  devise_for :users
  devise_for :instructors
  
  get "/about" => "abouts#index"
  get "/guide" => "guides#index"
end
