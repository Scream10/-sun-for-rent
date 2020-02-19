class TerracesController < ApplicationController

  def index
    if params["terrace"]["address"].present?
      query = params["terrace"]["address"]
      sql_query = "terraces.address ILIKE :query"
      @terraces = Terrace.where(sql_query, query: "%#{query}%")
    else
      @terraces = Terrace.all
    end
  end

  def show
    @terrace = Terrace.find(params[:id])
  end

  def new
    @terrace = Terrace.new()
    @user = User.find(params[:user_id])
  end

  def create
    @terrace = Terrace.new(terrace_params)
    @user = User.find(params[:user_id])
    @terrace.user_id = @user.id
    if @terrace.save!
      redirect_to user_path(@user.id)
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
    params.require(:terrace).permit(:name, :description, :photo, :address, :status, :user_id)
  end
end
