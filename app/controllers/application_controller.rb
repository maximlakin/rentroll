class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :setup_assumptions

private
  def setup_assumptions
  	if session[:assumptions].nil?
  		session[:assumptions] = {:market_rent=>20,:relocate=>0.4}
  	end
  end

end
