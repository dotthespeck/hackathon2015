class FlyersController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @flyers = Flyer.all
  end

  def show
    id = params[:id]
    @flyer = Flyer.find(id)
  end
end
