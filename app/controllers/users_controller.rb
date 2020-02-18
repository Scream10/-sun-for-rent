class UsersController < ApplicationController
  # def edit, update, new, create, and delete are already created by devise
  def show
    @user = User.find(params[:id])
  end

  def host

  end
end
