class HomeController < ApplicationController
  
  def index
    if params[:query] && params[:query].size
      @properties = Property.where("address LIKE ?", "%#{params[:query]}%").order(sort_column).paginate(:page => params[:page], :per_page => 5)
    else
  	 @properties = Property.order(sort_column).paginate(:page => params[:page], :per_page => 5)
    end
  	@property = Property.new
    @somevar = @property.some_calc
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

  private

  def sort_column
    params[:sort] || "address"
  end
end
