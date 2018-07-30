class KidsController < ApplicationController

  def index
    @kids = Kid.find_by(:profile_id => params[:profile_id])
  end

  def show

  end

  def new
    @kid = Kid.new
  end

  def create
    @kid = Kid.create(params[:kid_params])
    redirect profile_path(@kid.profile_id)
  end

  def edit
    @kid = Kid.find(params[:kid_params])
  end

  def update

  end

  private

  def kid_params
    params.require(:kid).permit(:kid_name, :kid_birthday, :profile_id)
  end
end
