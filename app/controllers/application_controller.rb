class ApplicationController < ActionController::Base
  
  before_action :set_search

  def set_search
    @q = Instructor.ransack(params[:q])   #params[:q]はransack特有の書き方で、検索したパラメータを受け取ることが可能
    @instructors = @q.result(distinct: true)    #distinct: trueで重複を避ける、@q.resuleで検索結果を受け取ることが可能
    @g = Genre.ransack(params[:q])
    @genres = @g.result(distinct: true)
    #binding.pry
  end
  
  
  
  before_action :configure_permitted_parameters, if: :devise_controller? #devise用のコントローラの場合にtrueとなる
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :level])
  end
  
  
end
