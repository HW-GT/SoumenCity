class PagesController < ApplicationController

  def index
  end

  def dashboard
  	@information = Information.where(active: true).order("updated_at DESC")
  end
  
end
