class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end


private
def prototypes_params
params.require(:prototypes).permit(:name, :image, :text).merge(user_id: current_user.id)
end


def set_tweet
  @prototypes =Prototype.find(params[:id])
end

def move_to_index
  unless user_signed_in?
    redirect_to action: :index
    end
   end 
 
 main
