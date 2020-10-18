class BookingsController < ApplicationController
    
    
    def index
        @bookings = Booking.where(params[:id])      #findではなくwhereにしないと each文で取り出せない(配列にして渡す)
    end
    
    def show
        @bookings = UserBooking.where(booking_id: params[:id])
    end
    
    def new
        @bookings = Booking.new
    end
    
    def create
        @bookings = Booking.new(booking_params)
        @bookings.instructor_id = current_instructor.id
        @bookings.booking = 0
        @bookings.reserved_count = 0
        if @bookings.save!
            flash[:success] = "レッスン予定日設定完了しました"
            redirect_to "/"
        else
            flash[:danger] = "登録に失敗しました"
            render "new"
        end
    end
    
        private
            def booking_params
                params.require(:booking).permit(:lesson_time, :how_many, :fee)
            end
end
