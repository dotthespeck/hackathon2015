class OrganizationsController < ActionController::Base

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    #@book.user_id = current_user.id
    if @organization.save
      redirect_to root_path, :notice => "You're All Aboard!"
    else
      render :new
    end
  end

  private
    def organization_params
      params.require(:organization).permit(:name, :address, :contact, :contact_email, :category, :id)
    end

end
