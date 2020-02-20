class TerracesController < ApplicationController
  def index
    if !params["terrace"].nil?
      query = params["terrace"]["address"]
      sql_query = "terraces.address ILIKE :query"
      @terraces = Terrace.where(sql_query, query: "%#{query}%")
    else
      @terraces = Terrace.all
    end

    @terraces = Terrace.geocoded
    @markers = @terraces.map do |terrace|
      {
        lat: terrace.latitude,
        lng: terrace.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { terrace: terrace })
      }
    end
  end

  def show
    @terrace = Terrace.find(params[:id])
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
    @user = User.find(params[:user_id])
    @terrace = Terrace.find(params[:id])
    @terrace.destroy
    redirect_to user_path(@user.id)
  end

  private

  def terrace_params
    params.require(:terrace).permit(:name, :description, :photo, :address, :price_per_night)
  end
end
