class BookingsController < ApplicationController
    
    def new
        @bookings = Booking.new
    end
    
    def create
        @bookings = Booking.new(booking_params)
        @bookings.instructor_id = current_instructor.id
        @bookings.booking = 1
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
