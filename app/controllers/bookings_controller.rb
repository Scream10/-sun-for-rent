class BookingsController < ApplicationController

  def new
    @terrace = Terrace.find(params[:terrace_id])
    @booking = Booking.new
  end

  def create
    @terrace = Terrace.find(params[:terrace_id])
    @booking = Booking.new(booking_params)
    @booking.terrace = @terrace
    if @terrace.save
      redirect_to user_path(@terrace.user)
    else
      render 'terraces/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @ooking.destroy
    redirect_to user_path(@terrase.user)
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date, :user_id, :terrace_id)
  end
end
