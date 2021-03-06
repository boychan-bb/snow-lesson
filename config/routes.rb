Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "top#index"    #topページへのルートパス
  devise_for :users   #user用(お客様)用のログイン
  devise_for :instructors   #インストラクター用のログインパス
  
  #インストラクター検索用ルーティング
  get "/instructors/search" => "instructors#search"
  get "/instructors/:id" => "instructors#show"
  #インストラクター検索用ルーティング
  
  #静的page routes
  get "/about" => "abouts#index"
  get "/guide" => "guides#index"
  #静的page routes
  
  #インストラクター自己紹介文作成用routes
  get "/introduction/new" => "introductions#new"
  post "/introduction/:id" => "introductions#create"
  get "/introduction/:id/edit" => "introductions#edit"
  patch "/introduction/:id" => "introductions#update"
  #get "/introduction/new" => "introductions#new"
  #post "/introduction" => "introductions#create"
  #インストラクター用自己紹介更新用routes
  
  #userマイページルーティング
  get "users/:id" => "users#show"
  get "/users/:id/edit" => "users#edit"
  patch "/users/:id" => "users#update"
  #userマイページルーティング
  
  #管理者用ルーティング
  get "/admins" => "admins#index"
  delete "/instructor/:id" => "instructors#destroy"
  delete "/user/:id" => "users#destroy"
  #管理者用ルーティング
  
  #ジャンル登録、編集用ルーティング
  get "/genre/new" => "genres#new"
  post "/genre" => "genres#create"
  get "/genre/:id/edit" => "genres#edit"
  patch "/genre/:id" => "genres#update"
  #ジャンル登録、編集用ルーティング
  
  #ジャンル検索用のルーティング
  get "/genre/search" => "genres#search"
  #ジャンル検索用のルーティング
  
  #インストラクター用予約機能実装ルーティング
  get "/booking/new" => "bookings#new"    #インストラクター用の予約機能ルーティング
  post "/booking" => "bookings#create"    #インストラクター用にレッスン可能日生成ルーティング
  get "/booking/:id" => "bookings#index"  #インストラクター用のレッスン申し込み状況確認ルーティング
  get "/booking/show/:id" => "bookings#show"   #インストラクター用のレッスン申し込み状況詳細ページルーティング,bookingのidを受けとる
  # resources :bookings do
  #   resources :user_bookings, only: [:show]
  # end
  #インストラクター用予約機能実装ルーティング
  
  #user側のレッスン申し込み日表示、予約機能ルーティング
  get "/user_booking/:id" => "user_bookings#index"  #user側のレッスン申し込み日表示
  post "/user_booking/:id" => "user_bookings#create"  #user側のレッスン申し込み時経由ルーティング
  #user側のレッスン申し込み日表示、予約機能ルーティング
  
end