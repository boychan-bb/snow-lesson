class UserBookingsController < ApplicationController
    
    def index
        @bookings = Booking.where(params[:id])      #findではなくwhereにしないと each文で取り出せない(配列にして渡す)
        #binding.pry
    end
    
    def create
        @bookings = Booking.find(params[:id])#ここにbookingsテーブルの処理を書くことにする。
        if @bookings.how_many > @bookings.reserved_count    #how_manyの方がreserved_countよりもまだ多い時
            @bookings.reserved_count += 1        #userが一人申し込んだわけなので、reserved_countは+1される
            @bookings.booking = 1 if @bookings.reserved_count == @bookings.how_many   #how_manyとreserved_countが一致した時   #reserved_countとhow_manyが同一数になったとき、満員フラグ"1"を立てる
        end
        #binding.pry
        @bookings.save
        
        @user_bookings = UserBooking.new
        @user_bookings.user_id = current_user.id
        @user_bookings.booking_id = params[:id]
        #binding.pry
        if @user_bookings.save
            flash.keep[:success] = "予約完了しました"
            redirect_to "/"
        else
            flash[:danger] = "予約に失敗しました"
            render "index"
        end
    end
    
end
