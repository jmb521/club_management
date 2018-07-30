class ProfilesController < ApplicationController

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
    @profile = Profile.find_by(:id => params[:id])

  end

  def update
    @profile = Profile.find_by(:id => params[:id])
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end


  private

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :address1, :address2, :city, :state, :zipcode, :phone, :user_id)
  end

end
