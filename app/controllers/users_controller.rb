class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "ジャンル登録完了しました！"
      redirect_to "/"
    else
      render "new"
    end
  end
  
  def destroy
    user = User.find(params[:id])   #管理者adminだけが削除をできるようにする。
    user.destroy if current_user.admin?   #管理者adminがログイン状態の時のみuserを削除する
    
    user_bookings = UserBooking.where(booking_id: params[:id])   #user_bookingに
    bookings = Booking.all
    
    
    flash[:success] = "User deleted"
    redirect_to "/"
  end
  
    private 
    def user_params
      params.require(:user).permit(:name, :level, :introduction)
    end
end
