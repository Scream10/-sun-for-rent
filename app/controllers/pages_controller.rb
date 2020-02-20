class PagesController < ApplicationController
  def home
    @terrace = Terrace.new
    @terraces = Terrace.all
  end

  def host
  end

end
