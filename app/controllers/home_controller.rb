class HomeController < ApplicationController
  def index
  	@properties = Property.all
  	@property = Property.new
  end

  def assumptions
  	@assumptions = session[:assumptions]
  end

  def update_assumptions
  	session[:assumptions][:market_rent] = params[:market_rent]
  	session[:assumptions][:relocate] = params[:relocate]
  	#render :text => params.inspect
  	redirect_to assumptions_url
  end
end
