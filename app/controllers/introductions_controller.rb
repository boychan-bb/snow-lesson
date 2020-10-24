class IntroductionsController < ApplicationController
  
  def new
    @introduction = Introduction.new#(introduction_params).save!
    #binding.pry
  end
  
  def create
    @introduction = Introduction.new(introduction_params)
    #@current_instructor = current_instructor.id
    #@introduction = @intro.build_introduction(introduction_params)
    @introduction.instructor_id = current_instructor.id
    
    if @introduction.save!
      flash[:success] = "登録完了しました"
      redirect_to "/"
    else
      flash[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  def edit
    @introduction = Introduction.find(params[:id])
  end
  
  def update
    @introduction = Introduction.find(params[:id])
    #binding.pry
    if @introduction.update_attributes(introduction_params)
      flash[:success] = "自己紹介文完成しました！"
      redirect_to "/"
    else
      render "new"
    end
  end
  
  private
  def introduction_params
    params.require(:introduction).permit(:introduction, :image) #ストロングパラメータで保存を許可
  end
  
end