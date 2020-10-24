class GenresController < ApplicationController
  
  #def search
     #@g = Genre.ransack(params[:g])
     #@genres = @g.result(distinct: true)
  #end
  
  def new
    @genre = Genre.new
  end
  
  def create
    @genre = Genre.new(genre_params)    #Strong Parameterで保存privateメソッド内のgenre_paramsを呼び出し
    @genre.instructor_id = current_instructor.id    #ここで、現在のログインしているインストラクターのidをinstructor_idに保存
    #binding.pry
    if @genre.save!
      flash[:success] = "ジャンル登録完了しました"
      redirect_to "/"
    else
      flash[:danger] = "登録に失敗しました"
      render :new
    end
  end
  
  def edit
    @genres = Genre.find(params[:id])
  end
  
  def update
    @genres = Genre.find(params[:id])
    if @genres.update_attributes(genre_params)
      flash[:success] = "ジャンル登録完了しました！"
      redirect_to "/"
    else
      render "new"
    end
  end
  
  private
  def genre_params
    params.require(:genre).permit(:genre, :instructor_id)
  end
end
