class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
  end

  def something
    @else = params[:else]
    @another = params[:another]
  end
end
