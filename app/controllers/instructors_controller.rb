class InstructorsController < ApplicationController
    
    before_action :move_to_root        #インストラクターマイページに遷移する前にmove_to_rootを実行
    
    # def search
    #     @instructors = Instructor.where("name LIKE(?)", "%#{params[:keyword]}%").limit(20)
    #end

    # def search
    #     @q = Instructor.ransack(params[:q])
    #     @instructors = @q.result(distinct: true)
    # end
    
    def show
        @instructor = Instructor.find(params[:id])
    end
    
        private
            def move_to_root
                redirect_to root_path unless instructor_signed_in?      #インストラクター側がログインしてない限りrootへ遷移させる。
            end
end
