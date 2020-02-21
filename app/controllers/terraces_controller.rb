class TerracesController < ApplicationController
  def index
    @terraces = Terrace.all
    if params[:query].present?
      @terraces = @terraces.search_by_address(params[:query])
    end

    @terraces = @terraces.geocoded
    @markers = @terraces.map do |terrace|
      {
        lat: terrace.latitude,
        lng: terrace.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { terrace: terrace }),
        image_url: helpers.asset_url('parasol.png')
      }
    end
    @user = current_user
  end

  def show
    @terrace = Terrace.find(params[:id])
    @booking = Booking.new
    @user = current_user

    @terraces = Terrace.geocoded.find(params[:id])
    @markers =
      [{
        lat: @terraces.latitude,
        lng: @terraces.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { terrace: @terraces }),
        image_url: helpers.asset_url('parasol.png')
      }]
  end

  def new
    @terrace = Terrace.new
  end

  def create
    @terrace = Terrace.new(terrace_params)
    @terrace.user_id = current_user.id
    if @terrace.save!
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @user = current_user
    @terrace = Terrace.find(params[:id])
    @terrace.destroy
    redirect_to bookings_path
  end

  private

  def terrace_params
    params.require(:terrace).permit(:name, :description, :photo, :address, :price_per_night)
  end
end
