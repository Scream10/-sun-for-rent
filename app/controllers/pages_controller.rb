class PagesController < ApplicationController
  def home
    @terrace = Terrace.new
  end

  def host
  end

end
