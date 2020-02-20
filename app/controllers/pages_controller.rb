class PagesController < ApplicationController
  def home
    @terrace = Terrace.new
    @user = current_user
  end

  def host
  end

end
