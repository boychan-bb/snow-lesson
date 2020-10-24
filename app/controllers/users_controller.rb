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
  
    private 
    def user_params
      params.require(:user).permit(:name, :level, :introduction)
    end
end
