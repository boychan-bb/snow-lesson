class InstructorsController < ApplicationController
    
    #before_action :move_to_root        #インストラクターマイページに遷移する前にmove_to_rootを実行
    
    # def search
    #     @instructors = Instructor.where("name LIKE(?)", "%#{params[:keyword]}%").limit(20)
    #end

    # def search
    #     @q = Instructor.ransack(params[:q])
    #     @instructors = @q.result(distinct: true)
    # end
    
    def show
        @instructor = Instructor.find(params[:id])
        @booking = Booking.find_by(instructor_id: params[:id])  #find_byでid以外の条件で検索する(instructor_id)
        #binding.pry
    end
    
        private
            def move_to_root
                redirect_to root_path unless instructor_signed_in?      #インストラクター側がログインしてない限りrootへ遷移させる。
            end
end