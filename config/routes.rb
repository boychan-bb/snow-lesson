Rails.application.routes.draw do
  root "top#index"    #topページへのルートパス
  devise_for :users   #user用(お客様)用のログイン
  devise_for :instructors   #インストラクター用のログインパス
  
  #インストラクター検索用ルーティング
  get "/instructors/search" => "instructors#search"
  get "instructors/:id" => "instructors#show"
  #インストラクター検索用ルーティング
  
  #静的page routes
  get "/about" => "abouts#index"
  get "/guide" => "guides#index"
  #静的page routes
  
  #インストラクター自己紹介文作成用routes
  get "/introduction/:id/edit" => "introductions#edit"
  patch "/introduction/:id" => "introductions#update"
  #get "/introduction/new" => "introductions#new"
  #post "/introduction" => "introductions#create"
  #インストラクター用自己紹介更新用routes
  
  #ジャンル検索用のルーティング
  get "/genre/:id/edit" => "genres#edit"
  patch "/genre/:id" => "genres#update"
  #get "/genre/new" => "genres#new"
  #post "/genre" => "genres#create"
  get "/genre/search" => "genres#search"
  #ジャンル検索用のルーティング
  
  get "/booking/new" => "bookings#new"    #インストラクター用の予約機能ルーティング
  post "/booking" => "bookings#create"    #インストラクター用にレッスン可能日生成ルーティング
  
  #user側のレッスン申し込み日表示、予約機能ルーティング
  get "/user_booking/:id" => "user_bookings#index"  #user側のレッスン申し込み日表示
  post "/user_booking/:id" => "user_bookings#create"  #user側のレッスン申し込み時経由ルーティング
  #user側のレッスン申し込み日表示、予約機能ルーティング
  
end