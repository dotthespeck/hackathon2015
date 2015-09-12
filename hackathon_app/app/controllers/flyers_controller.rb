class FlyersController < ApplicationController
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

  def new
    @flyer = Flyer.new
  end

  def create
    @flyer = Flyer.new(flyer_params)
    #@flyer.organization_id = organization.id
    if @flyer.save
      redirect_to root_path
      #:notice => "Your flyer is saved!"
    else
      render :new
    end
  end
  # def create
  #   @flyer = flyer.new(flyer_params)
  #   @book.user_id = current_user.id
  #   if @book.save
  #     redirect_to root_path, :notice => "Flyer was successfully added"
  #   else
  #     render :new
  #   end
  # end

  private
    def flyer_params
      params.require(:flyer).permit(:name, :image, :address, :contact, :contact_email, :category, :date, :time, :tags, :information)
    end

end
