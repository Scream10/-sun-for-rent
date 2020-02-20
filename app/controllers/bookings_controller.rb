class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @terraces = Terrace.all
  end

  def new
    @terrace = Terrace.find(params[:terrace_id])
    @booking = Booking.new
  end

  def create
    @terrace = Terrace.find(params[:terrace_id])
    # start_date = Date.new(booking_params['start_date(1i)'].to_i, bookusering_params['start_date(2i)'].to_i, booking_params['start_date(3i)'].to_i)
    # end_date = Date.new(booking_params['end_date(1i)'].to_i, booking_params['end_date(2i)'].to_i, booking_params['end_date(3i)'].to_i)
    @booking = Booking.new(booking_params)
    @booking.terrace = @terrace
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @ooking.destroy
    redirect_to user_path(@terrase.user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
