Rails.application.routes.draw do
  root "top#index"    #topページへのルートパス
  devise_for :users   #user用(お客様)用のログイン
  devise_for :instructors   #インストラクター用のログインパス
  
  get "/instructors/search" => "instructors#search"   #インストラクター検索用ルーティング
  get "instructors/:id" => "instructors#show"
  
  get "/about" => "abouts#index"
  get "/guide" => "guides#index"
  get "/introduction/:id/edit" => "introductions#edit"    #インストラクター自己紹介文作成用routes
  patch "/introduction/:id" => "introductions#update"   #インストラクター用自己紹介更新用routes
  #get "/introduction/new" => "introductions#new"
  #post "/introduction" => "introductions#create"
  
  get "/genre/:id/edit" => "genres#edit"
  patch "/genre/:id" => "genres#update"
  #get "/genre/new" => "genres#new"
  #post "/genre" => "genres#create"
  get "/genre/search" => "genres#search"    #ジャンル検索用のルーティング
  
  get "/booking/new" => "bookings#new"    #インストラクター用の予約機能ルーティング
  post "/booking" => "bookings#create"    #インストラクター用にレッスン可能日生成
  
  get "/user/booking" => "user_booking#index"
  
  #resources :instructors do
    #collection do   #７つのアクションから逸脱したアクションを定義する際に使用する
      #get "search"
    #end
  #end
end