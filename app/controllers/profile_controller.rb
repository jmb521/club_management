class ProfileController < ApplicationController

  def show
    @user = User.find_by(:id => params[:id])
  end

  def edit
    @profile = Profile.find_by(:id => params[:id])
  end

  def update
    @profile = Profile.find_by(:id => params[:id])

  end
end
