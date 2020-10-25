class User < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments, dependent: :destroy   #1人のuser削除する際に、そのuserが投稿したcommentsも同時に削除
  has_many :user_bookings, dependent: :destroy    #１人のuserを削除する際に、そのuserが予約したuser_bookingsも同時に削除
end
