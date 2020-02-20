class PagesController < ApplicationController
  def home
    @terrace = Terrace.new
    @terraces = Terrace.all
    @user = current_user
  end

  def host
  end

end
