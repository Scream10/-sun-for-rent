class TerracesController < ApplicationController
  def new
    @terrace = Terrace.new()
    @user = User.find(params[:user_id])
  end

  def create
    @terrace = Terrace.new(terrace_params)
    @user = User.find(params[:user_id])
    @terrace.user_id = @user.id
    if @terrace.save!
      redirect_to 'user_path'
    else
      render :new
    end
  end

  def destroy
    @terrace.find(params[:id])
    @terrace.destroy
  end

  private

  def terrace_params
    params.require(:terrace).permit(:name, :description, :address, :status, :user_id)
  end
end
